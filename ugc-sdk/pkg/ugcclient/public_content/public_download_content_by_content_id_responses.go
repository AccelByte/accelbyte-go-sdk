// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content

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

// PublicDownloadContentByContentIDReader is a Reader for the PublicDownloadContentByContentID structure.
type PublicDownloadContentByContentIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDownloadContentByContentIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicDownloadContentByContentIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDownloadContentByContentIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDownloadContentByContentIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDownloadContentByContentIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDownloadContentByContentIDOK creates a PublicDownloadContentByContentIDOK with default headers values
func NewPublicDownloadContentByContentIDOK() *PublicDownloadContentByContentIDOK {
	return &PublicDownloadContentByContentIDOK{}
}

/*PublicDownloadContentByContentIDOK handles this case with default header values.

  OK
*/
type PublicDownloadContentByContentIDOK struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponse
}

func (o *PublicDownloadContentByContentIDOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId}][%d] publicDownloadContentByContentIdOK  %+v", 200, o.ToJSONString())
}

func (o *PublicDownloadContentByContentIDOK) ToJSONString() string {
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

func (o *PublicDownloadContentByContentIDOK) GetPayload() *ugcclientmodels.ModelsContentDownloadResponse {
	return o.Payload
}

func (o *PublicDownloadContentByContentIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicDownloadContentByContentIDUnauthorized creates a PublicDownloadContentByContentIDUnauthorized with default headers values
func NewPublicDownloadContentByContentIDUnauthorized() *PublicDownloadContentByContentIDUnauthorized {
	return &PublicDownloadContentByContentIDUnauthorized{}
}

/*PublicDownloadContentByContentIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicDownloadContentByContentIDUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDownloadContentByContentIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId}][%d] publicDownloadContentByContentIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDownloadContentByContentIDUnauthorized) ToJSONString() string {
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

func (o *PublicDownloadContentByContentIDUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDownloadContentByContentIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDownloadContentByContentIDNotFound creates a PublicDownloadContentByContentIDNotFound with default headers values
func NewPublicDownloadContentByContentIDNotFound() *PublicDownloadContentByContentIDNotFound {
	return &PublicDownloadContentByContentIDNotFound{}
}

/*PublicDownloadContentByContentIDNotFound handles this case with default header values.

  Not Found
*/
type PublicDownloadContentByContentIDNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDownloadContentByContentIDNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId}][%d] publicDownloadContentByContentIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDownloadContentByContentIDNotFound) ToJSONString() string {
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

func (o *PublicDownloadContentByContentIDNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDownloadContentByContentIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDownloadContentByContentIDInternalServerError creates a PublicDownloadContentByContentIDInternalServerError with default headers values
func NewPublicDownloadContentByContentIDInternalServerError() *PublicDownloadContentByContentIDInternalServerError {
	return &PublicDownloadContentByContentIDInternalServerError{}
}

/*PublicDownloadContentByContentIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicDownloadContentByContentIDInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDownloadContentByContentIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId}][%d] publicDownloadContentByContentIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDownloadContentByContentIDInternalServerError) ToJSONString() string {
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

func (o *PublicDownloadContentByContentIDInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDownloadContentByContentIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
