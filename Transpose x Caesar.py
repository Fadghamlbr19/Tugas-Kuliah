import math

# enkripsi tranposisi
def transEncrypt(msg):
    cipher = ""

    keyIndx = 0

    msg_len = float(len(msg))
    msg_lst = list(msg)
    key_lst = sorted(list(key))

    col = len(key)
    row = int(math.ceil(msg_len / col))

    fill_null = int((row * col) - msg_len)
    msg_lst.extend('_' * fill_null)

    matrix = [msg_lst[i: i + col] 
              for i in range(0, len(msg_lst), col)]
    
    for _ in range(col):
        curr_idx = key.index(key_lst[keyIndx])
        cipher += ''.join([row[curr_idx] 
                          for row in matrix])
        keyIndx += 1
  
    return cipher

#dekripsi transposisi
def transDecrypt(decryption_text):
    msg = ""

    keyIndx = 0
    msgIndx = 0
    msg_len = float(len(cipher))
    msg_lst = list(cipher)
    
    col = len(key)
    row = int(math.ceil(msg_len / col))

    key_lst = sorted(list(key))

    dec_cipher = []
    for _ in range(row):
        dec_cipher += [[None] * col]

    for _ in range(col):
        curr_idx = key.index(key_lst[keyIndx])
  
        for j in range(row):
            dec_cipher[j][curr_idx] = msg_lst[msgIndx]
            msgIndx += 1
        keyIndx += 1

    try:
        msg = ''.join(sum(dec_cipher, []))
    except TypeError:
        raise TypeError("This program cannot",
                        "handle repeating words.")
  
    null_count = msg.count('_')
  
    if null_count > 0:
        return msg[: -null_count]
  
    return msg

#enkripsi caesar
def caesar_encrypt(text, shift_expr):
    result = ""
    # Iterate through each character in the text
    for i, char in enumerate(text):
        # Evaluate the shift expression with i as the variable
        shift = eval(shift_expr, {'i': i})
        # Check if the character is an uppercase or lowercase letter
        if char.isupper():
            # Shift the character by the specified amount
            result += chr((ord(char) + shift - 65) % 26 + 65)
        elif char.islower():
            # Shift the character by the specified amount
            result += chr((ord(char) + shift - 97) % 26 + 97)
        else:
            # If the character is not a letter, leave it as is
            result += char
    return result

#dekripsi caesar
def caesar_decrypt(encrypted_text,shift_expr):
    decrypted_text = ""
    for i in range(len(msg)):
        # Evaluate the shift expression with i as the variable
        shift = eval(shift_expr, {'i': i})
        # Decrypt each character using the negative of the shift value
        decrypted_text += caesar_encrypt(encrypted_text[i], "-" + str(shift))
    return decrypted_text

msg = input("Enter your Plaintext: ")
key = input("Enter your key: ")

shift_expr = "i + 3"
cipher = transEncrypt(msg)
encrypted_text = caesar_encrypt(cipher, shift_expr)
decrypted_text = caesar_decrypt(encrypted_text,shift_expr)


print("Plaintext: ", msg)
print("\nEncrypted1 Message Tranposition: {}".format(cipher))
print("\nEncrypted2 text  Caesar: ", encrypted_text)
print("\nDecrypted text After Caesar: ",decrypted_text )
print("\nDecrypted Message After Transposition : {}".format(transDecrypt(decrypted_text)))