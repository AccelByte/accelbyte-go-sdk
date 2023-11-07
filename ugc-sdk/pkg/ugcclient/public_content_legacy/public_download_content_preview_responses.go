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

// PublicDownloadContentPreviewReader is a Reader for the PublicDownloadContentPreview structure.
type PublicDownloadContentPreviewReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDownloadContentPreviewReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicDownloadContentPreviewOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDownloadContentPreviewUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDownloadContentPreviewNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDownloadContentPreviewInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDownloadContentPreviewOK creates a PublicDownloadContentPreviewOK with default headers values
func NewPublicDownloadContentPreviewOK() *PublicDownloadContentPreviewOK {
	return &PublicDownloadContentPreviewOK{}
}

/*PublicDownloadContentPreviewOK handles this case with default header values.

  OK
*/
type PublicDownloadContentPreviewOK struct {
	Payload *ugcclientmodels.ModelsGetContentPreviewResponse
}

func (o *PublicDownloadContentPreviewOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview][%d] publicDownloadContentPreviewOK  %+v", 200, o.ToJSONString())
}

func (o *PublicDownloadContentPreviewOK) ToJSONString() string {
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

func (o *PublicDownloadContentPreviewOK) GetPayload() *ugcclientmodels.ModelsGetContentPreviewResponse {
	return o.Payload
}

func (o *PublicDownloadContentPreviewOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsGetContentPreviewResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicDownloadContentPreviewUnauthorized creates a PublicDownloadContentPreviewUnauthorized with default headers values
func NewPublicDownloadContentPreviewUnauthorized() *PublicDownloadContentPreviewUnauthorized {
	return &PublicDownloadContentPreviewUnauthorized{}
}

/*PublicDownloadContentPreviewUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicDownloadContentPreviewUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDownloadContentPreviewUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview][%d] publicDownloadContentPreviewUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDownloadContentPreviewUnauthorized) ToJSONString() string {
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

func (o *PublicDownloadContentPreviewUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDownloadContentPreviewUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDownloadContentPreviewNotFound creates a PublicDownloadContentPreviewNotFound with default headers values
func NewPublicDownloadContentPreviewNotFound() *PublicDownloadContentPreviewNotFound {
	return &PublicDownloadContentPreviewNotFound{}
}

/*PublicDownloadContentPreviewNotFound handles this case with default header values.

  Not Found
*/
type PublicDownloadContentPreviewNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDownloadContentPreviewNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview][%d] publicDownloadContentPreviewNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDownloadContentPreviewNotFound) ToJSONString() string {
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

func (o *PublicDownloadContentPreviewNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDownloadContentPreviewNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDownloadContentPreviewInternalServerError creates a PublicDownloadContentPreviewInternalServerError with default headers values
func NewPublicDownloadContentPreviewInternalServerError() *PublicDownloadContentPreviewInternalServerError {
	return &PublicDownloadContentPreviewInternalServerError{}
}

/*PublicDownloadContentPreviewInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicDownloadContentPreviewInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDownloadContentPreviewInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview][%d] publicDownloadContentPreviewInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDownloadContentPreviewInternalServerError) ToJSONString() string {
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

func (o *PublicDownloadContentPreviewInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDownloadContentPreviewInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
