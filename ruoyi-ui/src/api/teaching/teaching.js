import request from '@/utils/request'

// 查询教学案例库列表
export function listTeaching(query) {
  return request({
    url: '/teaching/teaching/list',
    method: 'get',
    params: query
  })
}

// 查询教学案例库详细
export function getTeaching(caseId) {
  return request({
    url: '/teaching/teaching/' + caseId,
    method: 'get'
  })
}

// 新增教学案例库
export function addTeaching(data) {
  return request({
    url: '/teaching/teaching',
    method: 'post',
    data: data
  })
}

// 修改教学案例库
export function updateTeaching(data) {
  return request({
    url: '/teaching/teaching',
    method: 'put',
    data: data
  })
}

// 删除教学案例库
export function delTeaching(caseId) {
  return request({
    url: '/teaching/teaching/' + caseId,
    method: 'delete'
  })
}
