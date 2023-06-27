from instagram_private_api import Client
import random
import time


def login(username, password):
    api = Client(username, password)
    return api

def unfollow_accounts(api, num_unfollows):
    try:
        current_user_id = api.authenticated_user_id
        rank_token = Client.generate_uuid()
        followings = api.user_following(current_user_id, rank_token=rank_token)["users"]

        random.shuffle(followings)
        num_unfollows = min(num_unfollows, len(followings))

        count = 0

        for user in followings[:num_unfollows]:
            user_id = user["pk"]
            api.friendships_destroy(user_id)
            count += 1
            print(f"Unfollowed user ID: {user_id} | *{count}")
            time.sleep(random.randint(1, 30))

        return count

    except Exception as e:
        print(f'Error: {str(e)}')

f = open(".info.txt","r")
# User Info
username = f.readline()
password = f.readline()
num_unfollows = 20

api = login(username, password)
count = unfollow_accounts(api, num_unfollows)
