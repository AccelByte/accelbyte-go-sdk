// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_deletion

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// AdminCancelUserAccountDeletionRequestReader is a Reader for the AdminCancelUserAccountDeletionRequest structure.
type AdminCancelUserAccountDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCancelUserAccountDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminCancelUserAccountDeletionRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCancelUserAccountDeletionRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCancelUserAccountDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCancelUserAccountDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminCancelUserAccountDeletionRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCancelUserAccountDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCancelUserAccountDeletionRequestNoContent creates a AdminCancelUserAccountDeletionRequestNoContent with default headers values
func NewAdminCancelUserAccountDeletionRequestNoContent() *AdminCancelUserAccountDeletionRequestNoContent {
	return &AdminCancelUserAccountDeletionRequestNoContent{}
}

/*AdminCancelUserAccountDeletionRequestNoContent handles this case with default header values.

  No Content
*/
type AdminCancelUserAccountDeletionRequestNoContent struct {
}

func (o *AdminCancelUserAccountDeletionRequestNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminCancelUserAccountDeletionRequestNoContent ", 204)
}

func (o *AdminCancelUserAccountDeletionRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminCancelUserAccountDeletionRequestBadRequest creates a AdminCancelUserAccountDeletionRequestBadRequest with default headers values
func NewAdminCancelUserAccountDeletionRequestBadRequest() *AdminCancelUserAccountDeletionRequestBadRequest {
	return &AdminCancelUserAccountDeletionRequestBadRequest{}
}

/*AdminCancelUserAccountDeletionRequestBadRequest handles this case with default header values.

  Bad Request
*/
type AdminCancelUserAccountDeletionRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminCancelUserAccountDeletionRequestBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminCancelUserAccountDeletionRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCancelUserAccountDeletionRequestBadRequest) ToJSONString() string {
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

func (o *AdminCancelUserAccountDeletionRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCancelUserAccountDeletionRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCancelUserAccountDeletionRequestUnauthorized creates a AdminCancelUserAccountDeletionRequestUnauthorized with default headers values
func NewAdminCancelUserAccountDeletionRequestUnauthorized() *AdminCancelUserAccountDeletionRequestUnauthorized {
	return &AdminCancelUserAccountDeletionRequestUnauthorized{}
}

/*AdminCancelUserAccountDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminCancelUserAccountDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminCancelUserAccountDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminCancelUserAccountDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCancelUserAccountDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *AdminCancelUserAccountDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCancelUserAccountDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCancelUserAccountDeletionRequestForbidden creates a AdminCancelUserAccountDeletionRequestForbidden with default headers values
func NewAdminCancelUserAccountDeletionRequestForbidden() *AdminCancelUserAccountDeletionRequestForbidden {
	return &AdminCancelUserAccountDeletionRequestForbidden{}
}

/*AdminCancelUserAccountDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type AdminCancelUserAccountDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminCancelUserAccountDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminCancelUserAccountDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCancelUserAccountDeletionRequestForbidden) ToJSONString() string {
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

func (o *AdminCancelUserAccountDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCancelUserAccountDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCancelUserAccountDeletionRequestNotFound creates a AdminCancelUserAccountDeletionRequestNotFound with default headers values
func NewAdminCancelUserAccountDeletionRequestNotFound() *AdminCancelUserAccountDeletionRequestNotFound {
	return &AdminCancelUserAccountDeletionRequestNotFound{}
}

/*AdminCancelUserAccountDeletionRequestNotFound handles this case with default header values.

  Not Found
*/
type AdminCancelUserAccountDeletionRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminCancelUserAccountDeletionRequestNotFound) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminCancelUserAccountDeletionRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminCancelUserAccountDeletionRequestNotFound) ToJSONString() string {
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

func (o *AdminCancelUserAccountDeletionRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCancelUserAccountDeletionRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCancelUserAccountDeletionRequestInternalServerError creates a AdminCancelUserAccountDeletionRequestInternalServerError with default headers values
func NewAdminCancelUserAccountDeletionRequestInternalServerError() *AdminCancelUserAccountDeletionRequestInternalServerError {
	return &AdminCancelUserAccountDeletionRequestInternalServerError{}
}

/*AdminCancelUserAccountDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCancelUserAccountDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminCancelUserAccountDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminCancelUserAccountDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCancelUserAccountDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *AdminCancelUserAccountDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCancelUserAccountDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
