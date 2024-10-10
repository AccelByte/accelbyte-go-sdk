// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifacts

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

// ArtifactBulkDeleteReader is a Reader for the ArtifactBulkDelete structure.
type ArtifactBulkDeleteReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ArtifactBulkDeleteReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewArtifactBulkDeleteAccepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewArtifactBulkDeleteBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewArtifactBulkDeleteUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewArtifactBulkDeleteForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewArtifactBulkDeleteInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ams/v1/admin/namespaces/{namespace}/artifacts returns an error %d: %s", response.Code(), string(data))
	}
}

// NewArtifactBulkDeleteAccepted creates a ArtifactBulkDeleteAccepted with default headers values
func NewArtifactBulkDeleteAccepted() *ArtifactBulkDeleteAccepted {
	return &ArtifactBulkDeleteAccepted{}
}

/*ArtifactBulkDeleteAccepted handles this case with default header values.

  delete received
*/
type ArtifactBulkDeleteAccepted struct {
}

func (o *ArtifactBulkDeleteAccepted) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts][%d] artifactBulkDeleteAccepted ", 202)
}

func (o *ArtifactBulkDeleteAccepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewArtifactBulkDeleteBadRequest creates a ArtifactBulkDeleteBadRequest with default headers values
func NewArtifactBulkDeleteBadRequest() *ArtifactBulkDeleteBadRequest {
	return &ArtifactBulkDeleteBadRequest{}
}

/*ArtifactBulkDeleteBadRequest handles this case with default header values.

  bad request
*/
type ArtifactBulkDeleteBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactBulkDeleteBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts][%d] artifactBulkDeleteBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ArtifactBulkDeleteBadRequest) ToJSONString() string {
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

func (o *ArtifactBulkDeleteBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactBulkDeleteBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewArtifactBulkDeleteUnauthorized creates a ArtifactBulkDeleteUnauthorized with default headers values
func NewArtifactBulkDeleteUnauthorized() *ArtifactBulkDeleteUnauthorized {
	return &ArtifactBulkDeleteUnauthorized{}
}

/*ArtifactBulkDeleteUnauthorized handles this case with default header values.

  no authorization provided
*/
type ArtifactBulkDeleteUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactBulkDeleteUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts][%d] artifactBulkDeleteUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ArtifactBulkDeleteUnauthorized) ToJSONString() string {
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

func (o *ArtifactBulkDeleteUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactBulkDeleteUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewArtifactBulkDeleteForbidden creates a ArtifactBulkDeleteForbidden with default headers values
func NewArtifactBulkDeleteForbidden() *ArtifactBulkDeleteForbidden {
	return &ArtifactBulkDeleteForbidden{}
}

/*ArtifactBulkDeleteForbidden handles this case with default header values.

  insufficient permissions
*/
type ArtifactBulkDeleteForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactBulkDeleteForbidden) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts][%d] artifactBulkDeleteForbidden  %+v", 403, o.ToJSONString())
}

func (o *ArtifactBulkDeleteForbidden) ToJSONString() string {
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

func (o *ArtifactBulkDeleteForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactBulkDeleteForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewArtifactBulkDeleteInternalServerError creates a ArtifactBulkDeleteInternalServerError with default headers values
func NewArtifactBulkDeleteInternalServerError() *ArtifactBulkDeleteInternalServerError {
	return &ArtifactBulkDeleteInternalServerError{}
}

/*ArtifactBulkDeleteInternalServerError handles this case with default header values.

  internal server error
*/
type ArtifactBulkDeleteInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactBulkDeleteInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts][%d] artifactBulkDeleteInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ArtifactBulkDeleteInternalServerError) ToJSONString() string {
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

func (o *ArtifactBulkDeleteInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactBulkDeleteInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
