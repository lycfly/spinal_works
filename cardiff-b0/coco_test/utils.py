

def Uint2Sint(num, bits):
    sign_mask = 1 << (bits - 1)
    inv_mask = (1 << (bits)) - 1
    if((num & sign_mask) == 0):
        return num
    else:
        num = num ^ inv_mask
        num = num + 1
        return -num


if __name__ == "__main__":
    a = 0xfffe
    print(Uint2Sint(a,16))

