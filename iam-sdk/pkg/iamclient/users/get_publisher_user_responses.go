// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// GetPublisherUserReader is a Reader for the GetPublisherUser structure.
type GetPublisherUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPublisherUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPublisherUserOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPublisherUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPublisherUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetPublisherUserForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPublisherUserNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/{userId}/publisher returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPublisherUserOK creates a GetPublisherUserOK with default headers values
func NewGetPublisherUserOK() *GetPublisherUserOK {
	return &GetPublisherUserOK{}
}

/*GetPublisherUserOK handles this case with default header values.

  OK
*/
type GetPublisherUserOK struct {
	Payload *iamclientmodels.ModelGetPublisherUserResponse
}

func (o *GetPublisherUserOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/publisher][%d] getPublisherUserOK  %+v", 200, o.ToJSONString())
}

func (o *GetPublisherUserOK) ToJSONString() string {
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

func (o *GetPublisherUserOK) GetPayload() *iamclientmodels.ModelGetPublisherUserResponse {
	return o.Payload
}

func (o *GetPublisherUserOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetPublisherUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPublisherUserBadRequest creates a GetPublisherUserBadRequest with default headers values
func NewGetPublisherUserBadRequest() *GetPublisherUserBadRequest {
	return &GetPublisherUserBadRequest{}
}

/*GetPublisherUserBadRequest handles this case with default header values.

  Error Code: 7239 - Error Message: wrong namespace: required game namespace
*/
type GetPublisherUserBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetPublisherUserBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/publisher][%d] getPublisherUserBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetPublisherUserBadRequest) ToJSONString() string {
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

func (o *GetPublisherUserBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetPublisherUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPublisherUserUnauthorized creates a GetPublisherUserUnauthorized with default headers values
func NewGetPublisherUserUnauthorized() *GetPublisherUserUnauthorized {
	return &GetPublisherUserUnauthorized{}
}

/*GetPublisherUserUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetPublisherUserUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetPublisherUserUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/publisher][%d] getPublisherUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPublisherUserUnauthorized) ToJSONString() string {
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

func (o *GetPublisherUserUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetPublisherUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPublisherUserForbidden creates a GetPublisherUserForbidden with default headers values
func NewGetPublisherUserForbidden() *GetPublisherUserForbidden {
	return &GetPublisherUserForbidden{}
}

/*GetPublisherUserForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetPublisherUserForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetPublisherUserForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/publisher][%d] getPublisherUserForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetPublisherUserForbidden) ToJSONString() string {
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

func (o *GetPublisherUserForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetPublisherUserForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPublisherUserNotFound creates a GetPublisherUserNotFound with default headers values
func NewGetPublisherUserNotFound() *GetPublisherUserNotFound {
	return &GetPublisherUserNotFound{}
}

/*GetPublisherUserNotFound handles this case with default header values.

  Data not found
*/
type GetPublisherUserNotFound struct {
}

func (o *GetPublisherUserNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/publisher][%d] getPublisherUserNotFound ", 404)
}

func (o *GetPublisherUserNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
