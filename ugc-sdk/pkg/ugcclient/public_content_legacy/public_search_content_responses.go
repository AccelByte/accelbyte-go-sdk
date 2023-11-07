// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// PublicSearchContentReader is a Reader for the PublicSearchContent structure.
type PublicSearchContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSearchContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicSearchContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSearchContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSearchContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicSearchContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSearchContentOK creates a PublicSearchContentOK with default headers values
func NewPublicSearchContentOK() *PublicSearchContentOK {
	return &PublicSearchContentOK{}
}

/*PublicSearchContentOK handles this case with default header values.

  OK
*/
type PublicSearchContentOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *PublicSearchContentOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents][%d] publicSearchContentOK  %+v", 200, o.ToJSONString())
}

func (o *PublicSearchContentOK) ToJSONString() string {
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

func (o *PublicSearchContentOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *PublicSearchContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSearchContentUnauthorized creates a PublicSearchContentUnauthorized with default headers values
func NewPublicSearchContentUnauthorized() *PublicSearchContentUnauthorized {
	return &PublicSearchContentUnauthorized{}
}

/*PublicSearchContentUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicSearchContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicSearchContentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents][%d] publicSearchContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSearchContentUnauthorized) ToJSONString() string {
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

func (o *PublicSearchContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSearchContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSearchContentNotFound creates a PublicSearchContentNotFound with default headers values
func NewPublicSearchContentNotFound() *PublicSearchContentNotFound {
	return &PublicSearchContentNotFound{}
}

/*PublicSearchContentNotFound handles this case with default header values.

  Not Found
*/
type PublicSearchContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicSearchContentNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents][%d] publicSearchContentNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSearchContentNotFound) ToJSONString() string {
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

func (o *PublicSearchContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSearchContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSearchContentInternalServerError creates a PublicSearchContentInternalServerError with default headers values
func NewPublicSearchContentInternalServerError() *PublicSearchContentInternalServerError {
	return &PublicSearchContentInternalServerError{}
}

/*PublicSearchContentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicSearchContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicSearchContentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents][%d] publicSearchContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicSearchContentInternalServerError) ToJSONString() string {
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

func (o *PublicSearchContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSearchContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
