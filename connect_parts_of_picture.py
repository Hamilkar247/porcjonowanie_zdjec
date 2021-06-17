import os

picture_name="kozienice_map.png"
os.chdir("kozienice")
if os.path.exists(picture_name+".download"):
    os.remove(picture_name+".download")
x=0
end_picture = open(picture_name+".download", "ab")
while True:
    print(x)
    name_part=picture_name+"_"+str(x)
    if os.path.exists(name_part):
        f = open(name_part, "rb")
        end_picture.write(f.read())
    else:
        break
    x=x+1
        
