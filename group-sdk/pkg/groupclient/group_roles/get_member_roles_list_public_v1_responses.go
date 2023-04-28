// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_roles

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// GetMemberRolesListPublicV1Reader is a Reader for the GetMemberRolesListPublicV1 structure.
type GetMemberRolesListPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMemberRolesListPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMemberRolesListPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetMemberRolesListPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMemberRolesListPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMemberRolesListPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetMemberRolesListPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v1/public/namespaces/{namespace}/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMemberRolesListPublicV1OK creates a GetMemberRolesListPublicV1OK with default headers values
func NewGetMemberRolesListPublicV1OK() *GetMemberRolesListPublicV1OK {
	return &GetMemberRolesListPublicV1OK{}
}

/*GetMemberRolesListPublicV1OK handles this case with default header values.

  OK
*/
type GetMemberRolesListPublicV1OK struct {
	Payload *groupclientmodels.ModelsGetMemberRolesListResponseV1
}

func (o *GetMemberRolesListPublicV1OK) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV1OK) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV1OK) GetPayload() *groupclientmodels.ModelsGetMemberRolesListResponseV1 {
	return o.Payload
}

func (o *GetMemberRolesListPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetMemberRolesListResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMemberRolesListPublicV1BadRequest creates a GetMemberRolesListPublicV1BadRequest with default headers values
func NewGetMemberRolesListPublicV1BadRequest() *GetMemberRolesListPublicV1BadRequest {
	return &GetMemberRolesListPublicV1BadRequest{}
}

/*GetMemberRolesListPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetMemberRolesListPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMemberRolesListPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV1BadRequest) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMemberRolesListPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMemberRolesListPublicV1Unauthorized creates a GetMemberRolesListPublicV1Unauthorized with default headers values
func NewGetMemberRolesListPublicV1Unauthorized() *GetMemberRolesListPublicV1Unauthorized {
	return &GetMemberRolesListPublicV1Unauthorized{}
}

/*GetMemberRolesListPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetMemberRolesListPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMemberRolesListPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV1Unauthorized) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMemberRolesListPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMemberRolesListPublicV1Forbidden creates a GetMemberRolesListPublicV1Forbidden with default headers values
func NewGetMemberRolesListPublicV1Forbidden() *GetMemberRolesListPublicV1Forbidden {
	return &GetMemberRolesListPublicV1Forbidden{}
}

/*GetMemberRolesListPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetMemberRolesListPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMemberRolesListPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV1Forbidden) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMemberRolesListPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMemberRolesListPublicV1InternalServerError creates a GetMemberRolesListPublicV1InternalServerError with default headers values
func NewGetMemberRolesListPublicV1InternalServerError() *GetMemberRolesListPublicV1InternalServerError {
	return &GetMemberRolesListPublicV1InternalServerError{}
}

/*GetMemberRolesListPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetMemberRolesListPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMemberRolesListPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV1InternalServerError) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMemberRolesListPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
