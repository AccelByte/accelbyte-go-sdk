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

// ArtifactUsageGetReader is a Reader for the ArtifactUsageGet structure.
type ArtifactUsageGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ArtifactUsageGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewArtifactUsageGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewArtifactUsageGetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewArtifactUsageGetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewArtifactUsageGetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/artifacts/usage returns an error %d: %s", response.Code(), string(data))
	}
}

// NewArtifactUsageGetOK creates a ArtifactUsageGetOK with default headers values
func NewArtifactUsageGetOK() *ArtifactUsageGetOK {
	return &ArtifactUsageGetOK{}
}

/*ArtifactUsageGetOK handles this case with default header values.

  success
*/
type ArtifactUsageGetOK struct {
	Payload *amsclientmodels.APIArtifactUsageResponse
}

func (o *ArtifactUsageGetOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/usage][%d] artifactUsageGetOK  %+v", 200, o.ToJSONString())
}

func (o *ArtifactUsageGetOK) ToJSONString() string {
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

func (o *ArtifactUsageGetOK) GetPayload() *amsclientmodels.APIArtifactUsageResponse {
	return o.Payload
}

func (o *ArtifactUsageGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIArtifactUsageResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewArtifactUsageGetUnauthorized creates a ArtifactUsageGetUnauthorized with default headers values
func NewArtifactUsageGetUnauthorized() *ArtifactUsageGetUnauthorized {
	return &ArtifactUsageGetUnauthorized{}
}

/*ArtifactUsageGetUnauthorized handles this case with default header values.

  no authorization provided
*/
type ArtifactUsageGetUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactUsageGetUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/usage][%d] artifactUsageGetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ArtifactUsageGetUnauthorized) ToJSONString() string {
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

func (o *ArtifactUsageGetUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactUsageGetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactUsageGetForbidden creates a ArtifactUsageGetForbidden with default headers values
func NewArtifactUsageGetForbidden() *ArtifactUsageGetForbidden {
	return &ArtifactUsageGetForbidden{}
}

/*ArtifactUsageGetForbidden handles this case with default header values.

  insufficient permissions
*/
type ArtifactUsageGetForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactUsageGetForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/usage][%d] artifactUsageGetForbidden  %+v", 403, o.ToJSONString())
}

func (o *ArtifactUsageGetForbidden) ToJSONString() string {
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

func (o *ArtifactUsageGetForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactUsageGetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewArtifactUsageGetInternalServerError creates a ArtifactUsageGetInternalServerError with default headers values
func NewArtifactUsageGetInternalServerError() *ArtifactUsageGetInternalServerError {
	return &ArtifactUsageGetInternalServerError{}
}

/*ArtifactUsageGetInternalServerError handles this case with default header values.

  internal server error
*/
type ArtifactUsageGetInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ArtifactUsageGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/artifacts/usage][%d] artifactUsageGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ArtifactUsageGetInternalServerError) ToJSONString() string {
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

func (o *ArtifactUsageGetInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ArtifactUsageGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
