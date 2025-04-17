from PIL import Image
import pytesseract
import os
pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'
tessdata_dir_config = r'--tessdata-dir "C:\Program Files\Tesseract-OCR\tessdata"'
caminho_do_script = os.path.dirname(os.path.abspath(__file__))
os.chdir(caminho_do_script)
print("Novo diretório de trabalho:", os.getcwd())
imagem = "captcha.jpg"


try:
    image = Image.open(imagem)

    texto = pytesseract.image_to_string(imagem, lang='por')

    print("Texto encontrado:")
    print(texto)

except FileNotFoundError:
    print(f"Erro: 0 arquivo '{imagem}' não foi encontrado.")
except Exception as e:
    print(f"Ocorreu um erro durante o processamento da imagem: {e}")