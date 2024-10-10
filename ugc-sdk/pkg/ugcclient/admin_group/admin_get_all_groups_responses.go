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

// AdminGetAllGroupsReader is a Reader for the AdminGetAllGroups structure.
type AdminGetAllGroupsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAllGroupsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAllGroupsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetAllGroupsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAllGroupsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAllGroupsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAllGroupsOK creates a AdminGetAllGroupsOK with default headers values
func NewAdminGetAllGroupsOK() *AdminGetAllGroupsOK {
	return &AdminGetAllGroupsOK{}
}

/*AdminGetAllGroupsOK handles this case with default header values.

  Get all user groups
*/
type AdminGetAllGroupsOK struct {
	Payload *ugcclientmodels.ModelsPaginatedGroupResponse
}

func (o *AdminGetAllGroupsOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminGetAllGroupsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAllGroupsOK) ToJSONString() string {
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

func (o *AdminGetAllGroupsOK) GetPayload() *ugcclientmodels.ModelsPaginatedGroupResponse {
	return o.Payload
}

func (o *AdminGetAllGroupsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllGroupsBadRequest creates a AdminGetAllGroupsBadRequest with default headers values
func NewAdminGetAllGroupsBadRequest() *AdminGetAllGroupsBadRequest {
	return &AdminGetAllGroupsBadRequest{}
}

/*AdminGetAllGroupsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772301</td><td>invalid paging parameter</td></tr></table>
*/
type AdminGetAllGroupsBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetAllGroupsBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminGetAllGroupsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetAllGroupsBadRequest) ToJSONString() string {
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

func (o *AdminGetAllGroupsBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllGroupsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllGroupsUnauthorized creates a AdminGetAllGroupsUnauthorized with default headers values
func NewAdminGetAllGroupsUnauthorized() *AdminGetAllGroupsUnauthorized {
	return &AdminGetAllGroupsUnauthorized{}
}

/*AdminGetAllGroupsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetAllGroupsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetAllGroupsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminGetAllGroupsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAllGroupsUnauthorized) ToJSONString() string {
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

func (o *AdminGetAllGroupsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllGroupsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllGroupsInternalServerError creates a AdminGetAllGroupsInternalServerError with default headers values
func NewAdminGetAllGroupsInternalServerError() *AdminGetAllGroupsInternalServerError {
	return &AdminGetAllGroupsInternalServerError{}
}

/*AdminGetAllGroupsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772302</td><td>Unable get groups</td></tr></table>
*/
type AdminGetAllGroupsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetAllGroupsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminGetAllGroupsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAllGroupsInternalServerError) ToJSONString() string {
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

func (o *AdminGetAllGroupsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllGroupsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
