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

// S2SGetListFinishedAccountDeletionRequestReader is a Reader for the S2SGetListFinishedAccountDeletionRequest structure.
type S2SGetListFinishedAccountDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *S2SGetListFinishedAccountDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewS2SGetListFinishedAccountDeletionRequestOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewS2SGetListFinishedAccountDeletionRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewS2SGetListFinishedAccountDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewS2SGetListFinishedAccountDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewS2SGetListFinishedAccountDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/s2s/namespaces/{namespace}/deletions/finished returns an error %d: %s", response.Code(), string(data))
	}
}

// NewS2SGetListFinishedAccountDeletionRequestOK creates a S2SGetListFinishedAccountDeletionRequestOK with default headers values
func NewS2SGetListFinishedAccountDeletionRequestOK() *S2SGetListFinishedAccountDeletionRequestOK {
	return &S2SGetListFinishedAccountDeletionRequestOK{}
}

/*S2SGetListFinishedAccountDeletionRequestOK handles this case with default header values.

  OK
*/
type S2SGetListFinishedAccountDeletionRequestOK struct {
	Payload *gdprclientmodels.DTOListFinishedDataDeletion
}

func (o *S2SGetListFinishedAccountDeletionRequestOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/deletions/finished][%d] s2SGetListFinishedAccountDeletionRequestOK  %+v", 200, o.ToJSONString())
}

func (o *S2SGetListFinishedAccountDeletionRequestOK) ToJSONString() string {
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

func (o *S2SGetListFinishedAccountDeletionRequestOK) GetPayload() *gdprclientmodels.DTOListFinishedDataDeletion {
	return o.Payload
}

func (o *S2SGetListFinishedAccountDeletionRequestOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.DTOListFinishedDataDeletion)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGetListFinishedAccountDeletionRequestBadRequest creates a S2SGetListFinishedAccountDeletionRequestBadRequest with default headers values
func NewS2SGetListFinishedAccountDeletionRequestBadRequest() *S2SGetListFinishedAccountDeletionRequestBadRequest {
	return &S2SGetListFinishedAccountDeletionRequestBadRequest{}
}

/*S2SGetListFinishedAccountDeletionRequestBadRequest handles this case with default header values.

  Bad Request
*/
type S2SGetListFinishedAccountDeletionRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetListFinishedAccountDeletionRequestBadRequest) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/deletions/finished][%d] s2SGetListFinishedAccountDeletionRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *S2SGetListFinishedAccountDeletionRequestBadRequest) ToJSONString() string {
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

func (o *S2SGetListFinishedAccountDeletionRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetListFinishedAccountDeletionRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewS2SGetListFinishedAccountDeletionRequestUnauthorized creates a S2SGetListFinishedAccountDeletionRequestUnauthorized with default headers values
func NewS2SGetListFinishedAccountDeletionRequestUnauthorized() *S2SGetListFinishedAccountDeletionRequestUnauthorized {
	return &S2SGetListFinishedAccountDeletionRequestUnauthorized{}
}

/*S2SGetListFinishedAccountDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type S2SGetListFinishedAccountDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetListFinishedAccountDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/deletions/finished][%d] s2SGetListFinishedAccountDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *S2SGetListFinishedAccountDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *S2SGetListFinishedAccountDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetListFinishedAccountDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewS2SGetListFinishedAccountDeletionRequestForbidden creates a S2SGetListFinishedAccountDeletionRequestForbidden with default headers values
func NewS2SGetListFinishedAccountDeletionRequestForbidden() *S2SGetListFinishedAccountDeletionRequestForbidden {
	return &S2SGetListFinishedAccountDeletionRequestForbidden{}
}

/*S2SGetListFinishedAccountDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type S2SGetListFinishedAccountDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetListFinishedAccountDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/deletions/finished][%d] s2SGetListFinishedAccountDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *S2SGetListFinishedAccountDeletionRequestForbidden) ToJSONString() string {
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

func (o *S2SGetListFinishedAccountDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetListFinishedAccountDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewS2SGetListFinishedAccountDeletionRequestInternalServerError creates a S2SGetListFinishedAccountDeletionRequestInternalServerError with default headers values
func NewS2SGetListFinishedAccountDeletionRequestInternalServerError() *S2SGetListFinishedAccountDeletionRequestInternalServerError {
	return &S2SGetListFinishedAccountDeletionRequestInternalServerError{}
}

/*S2SGetListFinishedAccountDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type S2SGetListFinishedAccountDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetListFinishedAccountDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/deletions/finished][%d] s2SGetListFinishedAccountDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *S2SGetListFinishedAccountDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *S2SGetListFinishedAccountDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetListFinishedAccountDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
