// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// SingleAdminGetAllGroupsReader is a Reader for the SingleAdminGetAllGroups structure.
type SingleAdminGetAllGroupsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminGetAllGroupsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSingleAdminGetAllGroupsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSingleAdminGetAllGroupsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminGetAllGroupsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminGetAllGroupsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminGetAllGroupsOK creates a SingleAdminGetAllGroupsOK with default headers values
func NewSingleAdminGetAllGroupsOK() *SingleAdminGetAllGroupsOK {
	return &SingleAdminGetAllGroupsOK{}
}

/*SingleAdminGetAllGroupsOK handles this case with default header values.

  Get all user group
*/
type SingleAdminGetAllGroupsOK struct {
	Payload *ugcclientmodels.ModelsPaginatedGroupResponse
}

func (o *SingleAdminGetAllGroupsOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/groups][%d] singleAdminGetAllGroupsOK  %+v", 200, o.ToJSONString())
}

func (o *SingleAdminGetAllGroupsOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *SingleAdminGetAllGroupsOK) GetPayload() *ugcclientmodels.ModelsPaginatedGroupResponse {
	return o.Payload
}

func (o *SingleAdminGetAllGroupsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedGroupResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetAllGroupsBadRequest creates a SingleAdminGetAllGroupsBadRequest with default headers values
func NewSingleAdminGetAllGroupsBadRequest() *SingleAdminGetAllGroupsBadRequest {
	return &SingleAdminGetAllGroupsBadRequest{}
}

/*SingleAdminGetAllGroupsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772301</td><td>invalid paging parameter</td></tr></table>
*/
type SingleAdminGetAllGroupsBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetAllGroupsBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/groups][%d] singleAdminGetAllGroupsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SingleAdminGetAllGroupsBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *SingleAdminGetAllGroupsBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetAllGroupsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetAllGroupsUnauthorized creates a SingleAdminGetAllGroupsUnauthorized with default headers values
func NewSingleAdminGetAllGroupsUnauthorized() *SingleAdminGetAllGroupsUnauthorized {
	return &SingleAdminGetAllGroupsUnauthorized{}
}

/*SingleAdminGetAllGroupsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SingleAdminGetAllGroupsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetAllGroupsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/groups][%d] singleAdminGetAllGroupsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SingleAdminGetAllGroupsUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *SingleAdminGetAllGroupsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetAllGroupsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetAllGroupsInternalServerError creates a SingleAdminGetAllGroupsInternalServerError with default headers values
func NewSingleAdminGetAllGroupsInternalServerError() *SingleAdminGetAllGroupsInternalServerError {
	return &SingleAdminGetAllGroupsInternalServerError{}
}

/*SingleAdminGetAllGroupsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772302</td><td>Unable get groups</td></tr></table>
*/
type SingleAdminGetAllGroupsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetAllGroupsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/groups][%d] singleAdminGetAllGroupsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SingleAdminGetAllGroupsInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *SingleAdminGetAllGroupsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetAllGroupsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
