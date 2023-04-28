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

// GetUserBanHistoryReader is a Reader for the GetUserBanHistory structure.
type GetUserBanHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserBanHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserBanHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserBanHistoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserBanHistoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserBanHistoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/{userId}/bans returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserBanHistoryOK creates a GetUserBanHistoryOK with default headers values
func NewGetUserBanHistoryOK() *GetUserBanHistoryOK {
	return &GetUserBanHistoryOK{}
}

/*GetUserBanHistoryOK handles this case with default header values.

  OK
*/
type GetUserBanHistoryOK struct {
	Payload []*iamclientmodels.ModelUserBanResponse
}

func (o *GetUserBanHistoryOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/bans][%d] getUserBanHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserBanHistoryOK) ToJSONString() string {
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

func (o *GetUserBanHistoryOK) GetPayload() []*iamclientmodels.ModelUserBanResponse {
	return o.Payload
}

func (o *GetUserBanHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserBanHistoryUnauthorized creates a GetUserBanHistoryUnauthorized with default headers values
func NewGetUserBanHistoryUnauthorized() *GetUserBanHistoryUnauthorized {
	return &GetUserBanHistoryUnauthorized{}
}

/*GetUserBanHistoryUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserBanHistoryUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserBanHistoryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/bans][%d] getUserBanHistoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserBanHistoryUnauthorized) ToJSONString() string {
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

func (o *GetUserBanHistoryUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserBanHistoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserBanHistoryForbidden creates a GetUserBanHistoryForbidden with default headers values
func NewGetUserBanHistoryForbidden() *GetUserBanHistoryForbidden {
	return &GetUserBanHistoryForbidden{}
}

/*GetUserBanHistoryForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserBanHistoryForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserBanHistoryForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/bans][%d] getUserBanHistoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserBanHistoryForbidden) ToJSONString() string {
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

func (o *GetUserBanHistoryForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserBanHistoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserBanHistoryNotFound creates a GetUserBanHistoryNotFound with default headers values
func NewGetUserBanHistoryNotFound() *GetUserBanHistoryNotFound {
	return &GetUserBanHistoryNotFound{}
}

/*GetUserBanHistoryNotFound handles this case with default header values.

  Data not found
*/
type GetUserBanHistoryNotFound struct {
}

func (o *GetUserBanHistoryNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/bans][%d] getUserBanHistoryNotFound ", 404)
}

func (o *GetUserBanHistoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
