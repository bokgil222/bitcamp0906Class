<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>Jin's Blog</title>
	<link rel="stylesheet" href="css/blog.css"> 
</head>

<body>
	<!-- 전체 레이아웃을  감싸는 블록: 가운데 정렬, 보더, 쉐도우  -->
	<div id="main_wrap">
		<!-- header 시작 -->
		<%@ include file="frame/header.jsp" %>
		<!-- header 종료 -->
		
		<!-- 네비게이션 시작 -->
		<%@ include file="frame/nav.jsp" %>
		<!-- 네비게이션 종료-->
		
		<!-- Contents 영역 시작 -->
		<div id="contents_wrap>
		
			<!-- 게시물 영역 시작 -->
			<section>
				<article>
					<h3 class="title font margin_tb_5">테크 스페이스X 유인우주선 스타십 일론머스크 우주여행
                        스페이스X 유인 우주선 '스타십'</h3>
                     <div class="margin_tb_5">2021-11-19 10:38:15</div>
                     <img src="images/blt.jpg class="margin_tb_5">
                      <p class="margin_tb_5 lineheight_180per">일론 머스크가 이끄는 우주기업 스페이스X의 유인 우주선 '스타십'이 내년 1월 첫 번째 지구 궤도비행에
                        나선다.

                        18일(현지시간) <테크크런치>
                            <엔가젯> 등 외신에 따르면 일론 머스크는 미 국립과학원 발표에서 "올해 12월 여러 테스트를 거쳐 내년 1월 스타십을 발사하는 것이 목표"라며 "성공하지 못할
                                가능성도 높지만 이를 통해 (기술적으로) 많은 진전이 있을 것"이라고 말했다. 또 "내년에는 약 12번의 추가 발사가 있을 수 있다"고 덧붙였다.

                                스타십은 스페이스X가 개발 중인 다목적 초대형 우주 발사체다. 달과 화성을 포함한 행성 간 탐사 계획을 목표로 개발되고 있으며 부스터 '슈퍼헤비'를 포함하면
                                총 높이는 약 120m로 역대 우주선 중 가장 거대한 크기로 만들어질 전망이다. (직전 최대 기록은 NASA의 새턴V, 110m) 탑승 가능한 인원도 약
                                80명에서 120명으로 우주 여객선에 가깝다.

                                스타십은 SN20이라는 시제품을 통해 미국 텍사스주에 위치한 스페이스X 시험장 '스타베이스'에서 발사될 예정이다. 연내에 미국 연방항공국(FAA)의 발사
                                승인이 떨어지면 예정대로 1월 중 첫 지구궤도 시험 발사가 이뤄질 수 있게 된다. 2023년에는 화물 운송이 가능한 수준을 목표로 한다.</p>
				</article>
				
				<article>
					<h3 class="title font margin_tb_5">테크 스페이스X 유인우주선 스타십 일론머스크 우주여행
                        스페이스X 유인 우주선 '스타십'</h3>
                     <div class="margin_tb_5">2021-11-19 10:38:15</div>
                     <img src="images/blt.jpg class="margin_tb_5">
                     <p class="margin_tb_5 lineheight_180per">일론 머스크가 이끄는 우주기업 스페이스X의 유인 우주선 '스타십'이 내년 1월 첫 번째 지구 궤도비행에
                        나선다.

                        18일(현지시간) <테크크런치>
                            <엔가젯> 등 외신에 따르면 일론 머스크는 미 국립과학원 발표에서 "올해 12월 여러 테스트를 거쳐 내년 1월 스타십을 발사하는 것이 목표"라며 "성공하지 못할
                                가능성도 높지만 이를 통해 (기술적으로) 많은 진전이 있을 것"이라고 말했다. 또 "내년에는 약 12번의 추가 발사가 있을 수 있다"고 덧붙였다.

                                스타십은 스페이스X가 개발 중인 다목적 초대형 우주 발사체다. 달과 화성을 포함한 행성 간 탐사 계획을 목표로 개발되고 있으며 부스터 '슈퍼헤비'를 포함하면
                                총 높이는 약 120m로 역대 우주선 중 가장 거대한 크기로 만들어질 전망이다. (직전 최대 기록은 NASA의 새턴V, 110m) 탑승 가능한 인원도 약
                                80명에서 120명으로 우주 여객선에 가깝다.

                                스타십은 SN20이라는 시제품을 통해 미국 텍사스주에 위치한 스페이스X 시험장 '스타베이스'에서 발사될 예정이다. 연내에 미국 연방항공국(FAA)의 발사
                                승인이 떨어지면 예정대로 1월 중 첫 지구궤도 시험 발사가 이뤄질 수 있게 된다. 2023년에는 화물 운송이 가능한 수준을 목표로 한다.</p>
				</article>
			</section>
			<!-- 게시물 영역 종료 -->
			
			<!-- aside 시작 -->
			<%@ include file="frame/aside.jsp" %>
			<!-- aside 종료 -->
			
		</div>
		<!-- Contents 영역 종료 -->
		
		<!-- footer 시작 -->
		<%@ include file="frame/footer.jsp" %> 
		<!-- footer 종료 -->
				
	</div>
	
</body>

</html>