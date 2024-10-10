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

// GetUserJusticePlatformAccountReader is a Reader for the GetUserJusticePlatformAccount structure.
type GetUserJusticePlatformAccountReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserJusticePlatformAccountReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserJusticePlatformAccountOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserJusticePlatformAccountBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserJusticePlatformAccountUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserJusticePlatformAccountForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserJusticePlatformAccountOK creates a GetUserJusticePlatformAccountOK with default headers values
func NewGetUserJusticePlatformAccountOK() *GetUserJusticePlatformAccountOK {
	return &GetUserJusticePlatformAccountOK{}
}

/*GetUserJusticePlatformAccountOK handles this case with default header values.

  OK
*/
type GetUserJusticePlatformAccountOK struct {
	Payload *iamclientmodels.ModelGetUserJusticePlatformAccountResponse
}

func (o *GetUserJusticePlatformAccountOK) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] getUserJusticePlatformAccountOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserJusticePlatformAccountOK) ToJSONString() string {
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

func (o *GetUserJusticePlatformAccountOK) GetPayload() *iamclientmodels.ModelGetUserJusticePlatformAccountResponse {
	return o.Payload
}

func (o *GetUserJusticePlatformAccountOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetUserJusticePlatformAccountResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserJusticePlatformAccountBadRequest creates a GetUserJusticePlatformAccountBadRequest with default headers values
func NewGetUserJusticePlatformAccountBadRequest() *GetUserJusticePlatformAccountBadRequest {
	return &GetUserJusticePlatformAccountBadRequest{}
}

/*GetUserJusticePlatformAccountBadRequest handles this case with default header values.

  Invalid request
*/
type GetUserJusticePlatformAccountBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserJusticePlatformAccountBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] getUserJusticePlatformAccountBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserJusticePlatformAccountBadRequest) ToJSONString() string {
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

func (o *GetUserJusticePlatformAccountBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserJusticePlatformAccountBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserJusticePlatformAccountUnauthorized creates a GetUserJusticePlatformAccountUnauthorized with default headers values
func NewGetUserJusticePlatformAccountUnauthorized() *GetUserJusticePlatformAccountUnauthorized {
	return &GetUserJusticePlatformAccountUnauthorized{}
}

/*GetUserJusticePlatformAccountUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserJusticePlatformAccountUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserJusticePlatformAccountUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] getUserJusticePlatformAccountUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserJusticePlatformAccountUnauthorized) ToJSONString() string {
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

func (o *GetUserJusticePlatformAccountUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserJusticePlatformAccountUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserJusticePlatformAccountForbidden creates a GetUserJusticePlatformAccountForbidden with default headers values
func NewGetUserJusticePlatformAccountForbidden() *GetUserJusticePlatformAccountForbidden {
	return &GetUserJusticePlatformAccountForbidden{}
}

/*GetUserJusticePlatformAccountForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserJusticePlatformAccountForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserJusticePlatformAccountForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] getUserJusticePlatformAccountForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserJusticePlatformAccountForbidden) ToJSONString() string {
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

func (o *GetUserJusticePlatformAccountForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserJusticePlatformAccountForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
