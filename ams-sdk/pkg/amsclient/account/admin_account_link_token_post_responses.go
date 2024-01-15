// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package account

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// AdminAccountLinkTokenPostReader is a Reader for the AdminAccountLinkTokenPost structure.
type AdminAccountLinkTokenPostReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAccountLinkTokenPostReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminAccountLinkTokenPostCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAccountLinkTokenPostUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAccountLinkTokenPostForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAccountLinkTokenPostInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ams/v1/admin/namespaces/{namespace}/account/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAccountLinkTokenPostCreated creates a AdminAccountLinkTokenPostCreated with default headers values
func NewAdminAccountLinkTokenPostCreated() *AdminAccountLinkTokenPostCreated {
	return &AdminAccountLinkTokenPostCreated{}
}

/*AdminAccountLinkTokenPostCreated handles this case with default header values.

  success
*/
type AdminAccountLinkTokenPostCreated struct {
	Payload *amsclientmodels.APIAccountLinkResponse
}

func (o *AdminAccountLinkTokenPostCreated) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkTokenPostCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminAccountLinkTokenPostCreated) ToJSONString() string {
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

func (o *AdminAccountLinkTokenPostCreated) GetPayload() *amsclientmodels.APIAccountLinkResponse {
	return o.Payload
}

func (o *AdminAccountLinkTokenPostCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIAccountLinkResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAccountLinkTokenPostUnauthorized creates a AdminAccountLinkTokenPostUnauthorized with default headers values
func NewAdminAccountLinkTokenPostUnauthorized() *AdminAccountLinkTokenPostUnauthorized {
	return &AdminAccountLinkTokenPostUnauthorized{}
}

/*AdminAccountLinkTokenPostUnauthorized handles this case with default header values.

  no authorization provided
*/
type AdminAccountLinkTokenPostUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkTokenPostUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkTokenPostUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAccountLinkTokenPostUnauthorized) ToJSONString() string {
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

func (o *AdminAccountLinkTokenPostUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkTokenPostUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAccountLinkTokenPostForbidden creates a AdminAccountLinkTokenPostForbidden with default headers values
func NewAdminAccountLinkTokenPostForbidden() *AdminAccountLinkTokenPostForbidden {
	return &AdminAccountLinkTokenPostForbidden{}
}

/*AdminAccountLinkTokenPostForbidden handles this case with default header values.

  insufficient permissions
*/
type AdminAccountLinkTokenPostForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkTokenPostForbidden) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkTokenPostForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAccountLinkTokenPostForbidden) ToJSONString() string {
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

func (o *AdminAccountLinkTokenPostForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkTokenPostForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAccountLinkTokenPostInternalServerError creates a AdminAccountLinkTokenPostInternalServerError with default headers values
func NewAdminAccountLinkTokenPostInternalServerError() *AdminAccountLinkTokenPostInternalServerError {
	return &AdminAccountLinkTokenPostInternalServerError{}
}

/*AdminAccountLinkTokenPostInternalServerError handles this case with default header values.

  internal server error
*/
type AdminAccountLinkTokenPostInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkTokenPostInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkTokenPostInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAccountLinkTokenPostInternalServerError) ToJSONString() string {
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

func (o *AdminAccountLinkTokenPostInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkTokenPostInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
