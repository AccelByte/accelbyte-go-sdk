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

// GetUserMappingReader is a Reader for the GetUserMapping structure.
type GetUserMappingReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserMappingReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserMappingOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserMappingBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserMappingUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserMappingForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserMappingNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserMappingOK creates a GetUserMappingOK with default headers values
func NewGetUserMappingOK() *GetUserMappingOK {
	return &GetUserMappingOK{}
}

/*GetUserMappingOK handles this case with default header values.

  OK
*/
type GetUserMappingOK struct {
	Payload *iamclientmodels.ModelGetUserMapping
}

func (o *GetUserMappingOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] getUserMappingOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserMappingOK) ToJSONString() string {
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

func (o *GetUserMappingOK) GetPayload() *iamclientmodels.ModelGetUserMapping {
	return o.Payload
}

func (o *GetUserMappingOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetUserMapping)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserMappingBadRequest creates a GetUserMappingBadRequest with default headers values
func NewGetUserMappingBadRequest() *GetUserMappingBadRequest {
	return &GetUserMappingBadRequest{}
}

/*GetUserMappingBadRequest handles this case with default header values.

  Invalid request
*/
type GetUserMappingBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserMappingBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] getUserMappingBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserMappingBadRequest) ToJSONString() string {
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

func (o *GetUserMappingBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserMappingBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserMappingUnauthorized creates a GetUserMappingUnauthorized with default headers values
func NewGetUserMappingUnauthorized() *GetUserMappingUnauthorized {
	return &GetUserMappingUnauthorized{}
}

/*GetUserMappingUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserMappingUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserMappingUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] getUserMappingUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserMappingUnauthorized) ToJSONString() string {
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

func (o *GetUserMappingUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserMappingUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserMappingForbidden creates a GetUserMappingForbidden with default headers values
func NewGetUserMappingForbidden() *GetUserMappingForbidden {
	return &GetUserMappingForbidden{}
}

/*GetUserMappingForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserMappingForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserMappingForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] getUserMappingForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserMappingForbidden) ToJSONString() string {
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

func (o *GetUserMappingForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserMappingForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserMappingNotFound creates a GetUserMappingNotFound with default headers values
func NewGetUserMappingNotFound() *GetUserMappingNotFound {
	return &GetUserMappingNotFound{}
}

/*GetUserMappingNotFound handles this case with default header values.

  Data not found
*/
type GetUserMappingNotFound struct {
}

func (o *GetUserMappingNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] getUserMappingNotFound ", 404)
}

func (o *GetUserMappingNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
