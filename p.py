import spacy 
from collections import Counter
import re

file= open('paragraphs.txt')
text= file.read()
# print(text)
nlp = spacy.load("en_core_web_sm")
sw_spacy = nlp.Defaults.stop_words
words = [word for word in text.split() if word.lower() not in sw_spacy]
new_text = " ".join(words)

def freq(new_text):
    lowertxt= new_text.lower()
    words = re.findall(r'\b\w+\b', lowertxt)
    words.sort()
    frequency = Counter(words)
    sorted_frequency = sorted(frequency.items(), key=lambda x: x[1])

    for word, freq in sorted_frequency:
        print(word, ':' , freq)


freq(new_text)