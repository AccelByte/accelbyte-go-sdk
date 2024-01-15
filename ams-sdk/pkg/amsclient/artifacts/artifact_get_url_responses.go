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

// ArtifactGetURLReader is a Reader for the ArtifactGetURL structure.
type ArtifactGetURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ArtifactGetURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewArtifactGetURLOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewArtifactGetURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewArtifactGetURLUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewArtifactGetURLForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewArtifactGetURLNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewArtifactGetURLInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url returns an error %d: %s", response.Code(), string(data))
	}
}

// NewArtifactGetURLOK creates a ArtifactGetURLOK with default headers values
func NewArtifactGetURLOK() *ArtifactGetURLOK {
	return &ArtifactGetURLOK{}
}

/*ArtifactGetURLOK handles this case with default header values.

  success
*/
type ArtifactGetURLOK struct {
	Payload *amsclientmodels.APIArtifactURLResponse
}

func (o *ArtifactGetURLOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url][%d] artifactGetUrlOK  %+v", 200, o.ToJSONString())
}

func (o *ArtifactGetURLOK) ToJSONString() string {
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

func (o *ArtifactGetURLOK) GetPayload() *amsclientmodels.APIArtifactURLResponse {
	return o.Payload
}

func (o *ArtifactGetURLOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIArtifactURLResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewArtifactGetURLBadRequest creates a ArtifactGetURLBadRequest with default headers values
func NewArtifactGetURLBadRequest() *ArtifactGetURLBadRequest {
	return &ArtifactGetURLBadRequest{}
}

/*ArtifactGetURLBadRequest handles this case with default header values.

  invalid data in request
*/
type ArtifactGetURLBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactGetURLBadRequest) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url][%d] artifactGetUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ArtifactGetURLBadRequest) ToJSONString() string {
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

func (o *ArtifactGetURLBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactGetURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactGetURLUnauthorized creates a ArtifactGetURLUnauthorized with default headers values
func NewArtifactGetURLUnauthorized() *ArtifactGetURLUnauthorized {
	return &ArtifactGetURLUnauthorized{}
}

/*ArtifactGetURLUnauthorized handles this case with default header values.

  no authorization provided
*/
type ArtifactGetURLUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactGetURLUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url][%d] artifactGetUrlUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ArtifactGetURLUnauthorized) ToJSONString() string {
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

func (o *ArtifactGetURLUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactGetURLUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactGetURLForbidden creates a ArtifactGetURLForbidden with default headers values
func NewArtifactGetURLForbidden() *ArtifactGetURLForbidden {
	return &ArtifactGetURLForbidden{}
}

/*ArtifactGetURLForbidden handles this case with default header values.

  insufficient permissions
*/
type ArtifactGetURLForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactGetURLForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url][%d] artifactGetUrlForbidden  %+v", 403, o.ToJSONString())
}

func (o *ArtifactGetURLForbidden) ToJSONString() string {
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

func (o *ArtifactGetURLForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactGetURLForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactGetURLNotFound creates a ArtifactGetURLNotFound with default headers values
func NewArtifactGetURLNotFound() *ArtifactGetURLNotFound {
	return &ArtifactGetURLNotFound{}
}

/*ArtifactGetURLNotFound handles this case with default header values.

  no artifact with specifed artifactID
*/
type ArtifactGetURLNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactGetURLNotFound) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url][%d] artifactGetUrlNotFound  %+v", 404, o.ToJSONString())
}

func (o *ArtifactGetURLNotFound) ToJSONString() string {
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

func (o *ArtifactGetURLNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactGetURLNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactGetURLInternalServerError creates a ArtifactGetURLInternalServerError with default headers values
func NewArtifactGetURLInternalServerError() *ArtifactGetURLInternalServerError {
	return &ArtifactGetURLInternalServerError{}
}

/*ArtifactGetURLInternalServerError handles this case with default header values.

  internal server error
*/
type ArtifactGetURLInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactGetURLInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url][%d] artifactGetUrlInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ArtifactGetURLInternalServerError) ToJSONString() string {
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

func (o *ArtifactGetURLInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactGetURLInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
