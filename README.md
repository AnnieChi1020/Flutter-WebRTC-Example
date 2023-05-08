# flutter_application_webrtc

### Process:

1. User A 點擊 "Offer" 來建立新的 WebRTC 連線，透過 createOffer 建立新的 SDP offer 給 remotePeer (User B)，createOffer 成功後，新的 SDP offer 需先透過 setLocalDescription 來更新自身的 localDescription 資訊
  <img width="600" alt="Screen Shot 2023-05-08 at 10 43 21 PM" src="https://user-images.githubusercontent.com/77234273/236855046-a06e0bf2-d544-4713-8368-ebca30c82aec.png">

2. User B 將 User A 建立的 SDP offer 貼到畫面的 input 中，點擊 setRemoteDescription，透過 setRemoteDescription 來更新自身的 remoteDescription 資訊
  <img width="600" alt="Screen Shot 2023-05-08 at 10 43 42 PM" src="https://user-images.githubusercontent.com/77234273/236855088-4a1e396f-f3f3-4c4f-a6cd-573917feb908.png">

3. User B 更新成功後，點擊 Answer，藉由 createAnswer 建立 SDP answer，回應前也是要先更新自身的 localDescription 資訊
  <img width="600" alt="Screen Shot 2023-05-08 at 10 44 08 PM" src="https://user-images.githubusercontent.com/77234273/236855103-2d677175-4d63-47ef-8602-960e583446f1.png">

4. User A 將 User B 建立的 SDP answer 貼到
  <img width="600" alt="Screen Shot 2023-05-08 at 10 44 38 PM" src="https://user-images.githubusercontent.com/77234273/236855122-69a55027-4344-43ca-a960-c239321a8df9.png">
畫面的 input 中，點擊 setRemoteDescription，更新 remoteDescription 資訊

5. User A 將 User B 產生的 candidate 貼到畫面的 input 中，點擊 Set Candidate
  <img width="600" alt="Screen Shot 2023-05-08 at 10 44 54 PM" src="https://user-images.githubusercontent.com/77234273/236855146-0d00ff9a-a676-410d-90a6-b41f83335bd0.png">

