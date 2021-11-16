import subprocess
import threading

from StreamDeck.DeviceManager import DeviceManager
from StreamDeck.ImageHelpers import PILHelper
from PIL import Image


def update_key_image(deck, key, state):
    if key % 2 == 0:
        filename = 'assets/sharingan.png'
    else:
        filename = 'assets/rinnegan.jpg'
    image = Image.open(filename)
    image = PILHelper.create_scaled_image(deck, image, margins=[0, 0, 0, 0])
    image = PILHelper.to_native_format(deck, image)
    with deck:
        deck.set_key_image(key, image)


def key_change_callback(deck, key, state: bool):
    # print("Deck {} Key {} = {}".format(deck.id(), key, state), flush=True)
    # print("STATE", state)
    # update_key_image(deck, key, state)
    if not state:
        return
    if key == 0:
        process = subprocess.Popen(['set-volume', 'down'],
                                   stdout=subprocess.PIPE,
                                   stderr=subprocess.PIPE)
    elif key == 1:
        process = subprocess.Popen(['toggle-mute'],
                                   stdout=subprocess.PIPE,
                                   stderr=subprocess.PIPE,
                                   shell=True)
    elif key == 2:
        process = subprocess.Popen(['set-volume', 'down'],
                                   stdout=subprocess.PIPE,
                                   stderr=subprocess.PIPE)
    elif key == 3:
        pass
    elif key == 4:
        pass
    elif key == 5:
        pass
    elif key == 6:
        pass
    elif key == 7:
        pass
    elif key == 8:
        pass
    elif key == 9:
        pass
    elif key == 10:
        pass
    elif key == 11:
        pass
    elif key == 12:
        pass
    elif key == 13:
        pass
    elif key == 14:
        pass
    # stdout, stderr = process.communicate()
    # print(stdout)
    # print(stderr)
    # process.wait()


if __name__ == "__main__":
    streamdecks = DeviceManager().enumerate()
    print("Found {} Stream Deck(s).\n".format(len(streamdecks)))
    for index, deck in enumerate(streamdecks):
        deck.open()
        deck.reset()
        print("Opened '{}' device (serial number: '{}')".format(
            deck.deck_type(), deck.get_serial_number()))
        deck.set_brightness(100)
        for key in range(deck.key_count()):
            update_key_image(deck, key, False)
        deck.set_key_callback(key_change_callback)
        for t in threading.enumerate():
            if t is threading.currentThread():
                continue
            if t.is_alive():
                t.join()
