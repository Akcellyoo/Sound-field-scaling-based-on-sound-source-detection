video = xmlread('test.xml');
parameter = video.getElementsByTagName('parameter').item(0);
keyframes = parameter.getElementsByTagName('keyframe');
res =containers.Map
for i = 0:keyframes.getLength - 1
      keyframe = keyframes.item(i);
      when = char(keyframe.getElementsByTagName('when').item(0).getTextContent());
      value = char(keyframe.getElementsByTagName('value').item(0).getTextContent());
      res(when) = value;
end
%res������Ҫ�����ݣ���һ��map��  res.keys��ȡʱ������ res.values��ȡ���ű������飬�������Command Window��
%�����֪��5265���ʱ�������ű�������scale = res('5265')������
scale=res('5265')