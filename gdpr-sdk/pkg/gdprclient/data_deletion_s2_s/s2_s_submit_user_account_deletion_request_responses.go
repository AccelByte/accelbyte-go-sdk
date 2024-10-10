// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_deletion_s2_s

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

// S2SSubmitUserAccountDeletionRequestReader is a Reader for the S2SSubmitUserAccountDeletionRequest structure.
type S2SSubmitUserAccountDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *S2SSubmitUserAccountDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewS2SSubmitUserAccountDeletionRequestCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewS2SSubmitUserAccountDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewS2SSubmitUserAccountDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewS2SSubmitUserAccountDeletionRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewS2SSubmitUserAccountDeletionRequestConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewS2SSubmitUserAccountDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewS2SSubmitUserAccountDeletionRequestCreated creates a S2SSubmitUserAccountDeletionRequestCreated with default headers values
func NewS2SSubmitUserAccountDeletionRequestCreated() *S2SSubmitUserAccountDeletionRequestCreated {
	return &S2SSubmitUserAccountDeletionRequestCreated{}
}

/*S2SSubmitUserAccountDeletionRequestCreated handles this case with default header values.

  Created
*/
type S2SSubmitUserAccountDeletionRequestCreated struct {
	Payload *gdprclientmodels.ModelsS2SRequestDeleteResponse
}

func (o *S2SSubmitUserAccountDeletionRequestCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions][%d] s2SSubmitUserAccountDeletionRequestCreated  %+v", 201, o.ToJSONString())
}

func (o *S2SSubmitUserAccountDeletionRequestCreated) ToJSONString() string {
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

func (o *S2SSubmitUserAccountDeletionRequestCreated) GetPayload() *gdprclientmodels.ModelsS2SRequestDeleteResponse {
	return o.Payload
}

func (o *S2SSubmitUserAccountDeletionRequestCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsS2SRequestDeleteResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SSubmitUserAccountDeletionRequestUnauthorized creates a S2SSubmitUserAccountDeletionRequestUnauthorized with default headers values
func NewS2SSubmitUserAccountDeletionRequestUnauthorized() *S2SSubmitUserAccountDeletionRequestUnauthorized {
	return &S2SSubmitUserAccountDeletionRequestUnauthorized{}
}

/*S2SSubmitUserAccountDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type S2SSubmitUserAccountDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SSubmitUserAccountDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions][%d] s2SSubmitUserAccountDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *S2SSubmitUserAccountDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *S2SSubmitUserAccountDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SSubmitUserAccountDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewS2SSubmitUserAccountDeletionRequestForbidden creates a S2SSubmitUserAccountDeletionRequestForbidden with default headers values
func NewS2SSubmitUserAccountDeletionRequestForbidden() *S2SSubmitUserAccountDeletionRequestForbidden {
	return &S2SSubmitUserAccountDeletionRequestForbidden{}
}

/*S2SSubmitUserAccountDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type S2SSubmitUserAccountDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SSubmitUserAccountDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions][%d] s2SSubmitUserAccountDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *S2SSubmitUserAccountDeletionRequestForbidden) ToJSONString() string {
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

func (o *S2SSubmitUserAccountDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SSubmitUserAccountDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewS2SSubmitUserAccountDeletionRequestNotFound creates a S2SSubmitUserAccountDeletionRequestNotFound with default headers values
func NewS2SSubmitUserAccountDeletionRequestNotFound() *S2SSubmitUserAccountDeletionRequestNotFound {
	return &S2SSubmitUserAccountDeletionRequestNotFound{}
}

/*S2SSubmitUserAccountDeletionRequestNotFound handles this case with default header values.

  Not Found
*/
type S2SSubmitUserAccountDeletionRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SSubmitUserAccountDeletionRequestNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions][%d] s2SSubmitUserAccountDeletionRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *S2SSubmitUserAccountDeletionRequestNotFound) ToJSONString() string {
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

func (o *S2SSubmitUserAccountDeletionRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SSubmitUserAccountDeletionRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewS2SSubmitUserAccountDeletionRequestConflict creates a S2SSubmitUserAccountDeletionRequestConflict with default headers values
func NewS2SSubmitUserAccountDeletionRequestConflict() *S2SSubmitUserAccountDeletionRequestConflict {
	return &S2SSubmitUserAccountDeletionRequestConflict{}
}

/*S2SSubmitUserAccountDeletionRequestConflict handles this case with default header values.

  Conflict
*/
type S2SSubmitUserAccountDeletionRequestConflict struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SSubmitUserAccountDeletionRequestConflict) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions][%d] s2SSubmitUserAccountDeletionRequestConflict  %+v", 409, o.ToJSONString())
}

func (o *S2SSubmitUserAccountDeletionRequestConflict) ToJSONString() string {
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

func (o *S2SSubmitUserAccountDeletionRequestConflict) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SSubmitUserAccountDeletionRequestConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewS2SSubmitUserAccountDeletionRequestInternalServerError creates a S2SSubmitUserAccountDeletionRequestInternalServerError with default headers values
func NewS2SSubmitUserAccountDeletionRequestInternalServerError() *S2SSubmitUserAccountDeletionRequestInternalServerError {
	return &S2SSubmitUserAccountDeletionRequestInternalServerError{}
}

/*S2SSubmitUserAccountDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type S2SSubmitUserAccountDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SSubmitUserAccountDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions][%d] s2SSubmitUserAccountDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *S2SSubmitUserAccountDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *S2SSubmitUserAccountDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SSubmitUserAccountDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
