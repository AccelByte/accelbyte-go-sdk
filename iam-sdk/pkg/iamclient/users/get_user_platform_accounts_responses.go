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

// GetUserPlatformAccountsReader is a Reader for the GetUserPlatformAccounts structure.
type GetUserPlatformAccountsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserPlatformAccountsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserPlatformAccountsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserPlatformAccountsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserPlatformAccountsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserPlatformAccountsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/{userId}/platforms returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserPlatformAccountsOK creates a GetUserPlatformAccountsOK with default headers values
func NewGetUserPlatformAccountsOK() *GetUserPlatformAccountsOK {
	return &GetUserPlatformAccountsOK{}
}

/*GetUserPlatformAccountsOK handles this case with default header values.

  OK
*/
type GetUserPlatformAccountsOK struct {
	Payload []*iamclientmodels.AccountcommonUserLinkedPlatform
}

func (o *GetUserPlatformAccountsOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/platforms][%d] getUserPlatformAccountsOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserPlatformAccountsOK) ToJSONString() string {
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

func (o *GetUserPlatformAccountsOK) GetPayload() []*iamclientmodels.AccountcommonUserLinkedPlatform {
	return o.Payload
}

func (o *GetUserPlatformAccountsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserPlatformAccountsBadRequest creates a GetUserPlatformAccountsBadRequest with default headers values
func NewGetUserPlatformAccountsBadRequest() *GetUserPlatformAccountsBadRequest {
	return &GetUserPlatformAccountsBadRequest{}
}

/*GetUserPlatformAccountsBadRequest handles this case with default header values.

  Invalid request
*/
type GetUserPlatformAccountsBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserPlatformAccountsBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/platforms][%d] getUserPlatformAccountsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserPlatformAccountsBadRequest) ToJSONString() string {
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

func (o *GetUserPlatformAccountsBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserPlatformAccountsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserPlatformAccountsUnauthorized creates a GetUserPlatformAccountsUnauthorized with default headers values
func NewGetUserPlatformAccountsUnauthorized() *GetUserPlatformAccountsUnauthorized {
	return &GetUserPlatformAccountsUnauthorized{}
}

/*GetUserPlatformAccountsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserPlatformAccountsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserPlatformAccountsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/platforms][%d] getUserPlatformAccountsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserPlatformAccountsUnauthorized) ToJSONString() string {
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

func (o *GetUserPlatformAccountsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserPlatformAccountsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserPlatformAccountsForbidden creates a GetUserPlatformAccountsForbidden with default headers values
func NewGetUserPlatformAccountsForbidden() *GetUserPlatformAccountsForbidden {
	return &GetUserPlatformAccountsForbidden{}
}

/*GetUserPlatformAccountsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserPlatformAccountsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserPlatformAccountsForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/platforms][%d] getUserPlatformAccountsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserPlatformAccountsForbidden) ToJSONString() string {
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

func (o *GetUserPlatformAccountsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserPlatformAccountsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
