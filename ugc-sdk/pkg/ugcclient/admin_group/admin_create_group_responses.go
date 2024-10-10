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

// AdminCreateGroupReader is a Reader for the AdminCreateGroup structure.
type AdminCreateGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateGroupCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateGroupBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/admin/namespaces/{namespace}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateGroupCreated creates a AdminCreateGroupCreated with default headers values
func NewAdminCreateGroupCreated() *AdminCreateGroupCreated {
	return &AdminCreateGroupCreated{}
}

/*AdminCreateGroupCreated handles this case with default header values.

  groups created
*/
type AdminCreateGroupCreated struct {
	Payload *ugcclientmodels.ModelsCreateGroupResponse
}

func (o *AdminCreateGroupCreated) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/groups][%d] adminCreateGroupCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateGroupCreated) ToJSONString() string {
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

func (o *AdminCreateGroupCreated) GetPayload() *ugcclientmodels.ModelsCreateGroupResponse {
	return o.Payload
}

func (o *AdminCreateGroupCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateGroupResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateGroupBadRequest creates a AdminCreateGroupBadRequest with default headers values
func NewAdminCreateGroupBadRequest() *AdminCreateGroupBadRequest {
	return &AdminCreateGroupBadRequest{}
}

/*AdminCreateGroupBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772101</td><td>Malformed request/Invalid request body</td></tr></table>
*/
type AdminCreateGroupBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateGroupBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/groups][%d] adminCreateGroupBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateGroupBadRequest) ToJSONString() string {
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

func (o *AdminCreateGroupBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateGroupBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateGroupUnauthorized creates a AdminCreateGroupUnauthorized with default headers values
func NewAdminCreateGroupUnauthorized() *AdminCreateGroupUnauthorized {
	return &AdminCreateGroupUnauthorized{}
}

/*AdminCreateGroupUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateGroupUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateGroupUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/groups][%d] adminCreateGroupUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateGroupUnauthorized) ToJSONString() string {
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

func (o *AdminCreateGroupUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateGroupInternalServerError creates a AdminCreateGroupInternalServerError with default headers values
func NewAdminCreateGroupInternalServerError() *AdminCreateGroupInternalServerError {
	return &AdminCreateGroupInternalServerError{}
}

/*AdminCreateGroupInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772102</td><td>Unable to create group</td></tr></table>
*/
type AdminCreateGroupInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateGroupInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/groups][%d] adminCreateGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateGroupInternalServerError) ToJSONString() string {
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

func (o *AdminCreateGroupInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
