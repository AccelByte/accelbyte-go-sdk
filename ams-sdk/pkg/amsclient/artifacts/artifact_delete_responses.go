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

// ArtifactDeleteReader is a Reader for the ArtifactDelete structure.
type ArtifactDeleteReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ArtifactDeleteReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewArtifactDeleteAccepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewArtifactDeleteBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewArtifactDeleteUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewArtifactDeleteForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewArtifactDeleteNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewArtifactDeleteInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewArtifactDeleteAccepted creates a ArtifactDeleteAccepted with default headers values
func NewArtifactDeleteAccepted() *ArtifactDeleteAccepted {
	return &ArtifactDeleteAccepted{}
}

/*ArtifactDeleteAccepted handles this case with default header values.

  delete received
*/
type ArtifactDeleteAccepted struct {
}

func (o *ArtifactDeleteAccepted) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}][%d] artifactDeleteAccepted ", 202)
}

func (o *ArtifactDeleteAccepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewArtifactDeleteBadRequest creates a ArtifactDeleteBadRequest with default headers values
func NewArtifactDeleteBadRequest() *ArtifactDeleteBadRequest {
	return &ArtifactDeleteBadRequest{}
}

/*ArtifactDeleteBadRequest handles this case with default header values.

  bad request
*/
type ArtifactDeleteBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactDeleteBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}][%d] artifactDeleteBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ArtifactDeleteBadRequest) ToJSONString() string {
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

func (o *ArtifactDeleteBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactDeleteBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactDeleteUnauthorized creates a ArtifactDeleteUnauthorized with default headers values
func NewArtifactDeleteUnauthorized() *ArtifactDeleteUnauthorized {
	return &ArtifactDeleteUnauthorized{}
}

/*ArtifactDeleteUnauthorized handles this case with default header values.

  no authorization provided
*/
type ArtifactDeleteUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactDeleteUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}][%d] artifactDeleteUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ArtifactDeleteUnauthorized) ToJSONString() string {
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

func (o *ArtifactDeleteUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactDeleteUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactDeleteForbidden creates a ArtifactDeleteForbidden with default headers values
func NewArtifactDeleteForbidden() *ArtifactDeleteForbidden {
	return &ArtifactDeleteForbidden{}
}

/*ArtifactDeleteForbidden handles this case with default header values.

  insufficient permissions
*/
type ArtifactDeleteForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactDeleteForbidden) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}][%d] artifactDeleteForbidden  %+v", 403, o.ToJSONString())
}

func (o *ArtifactDeleteForbidden) ToJSONString() string {
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

func (o *ArtifactDeleteForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactDeleteForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactDeleteNotFound creates a ArtifactDeleteNotFound with default headers values
func NewArtifactDeleteNotFound() *ArtifactDeleteNotFound {
	return &ArtifactDeleteNotFound{}
}

/*ArtifactDeleteNotFound handles this case with default header values.

  no artifact with specifed artifactID
*/
type ArtifactDeleteNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactDeleteNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}][%d] artifactDeleteNotFound  %+v", 404, o.ToJSONString())
}

func (o *ArtifactDeleteNotFound) ToJSONString() string {
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

func (o *ArtifactDeleteNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactDeleteNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactDeleteInternalServerError creates a ArtifactDeleteInternalServerError with default headers values
func NewArtifactDeleteInternalServerError() *ArtifactDeleteInternalServerError {
	return &ArtifactDeleteInternalServerError{}
}

/*ArtifactDeleteInternalServerError handles this case with default header values.

  internal server error
*/
type ArtifactDeleteInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactDeleteInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}][%d] artifactDeleteInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ArtifactDeleteInternalServerError) ToJSONString() string {
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

func (o *ArtifactDeleteInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactDeleteInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
