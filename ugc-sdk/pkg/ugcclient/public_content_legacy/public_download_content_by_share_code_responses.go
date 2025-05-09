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

// PublicDownloadContentByShareCodeReader is a Reader for the PublicDownloadContentByShareCode structure.
type PublicDownloadContentByShareCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDownloadContentByShareCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicDownloadContentByShareCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDownloadContentByShareCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDownloadContentByShareCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDownloadContentByShareCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDownloadContentByShareCodeOK creates a PublicDownloadContentByShareCodeOK with default headers values
func NewPublicDownloadContentByShareCodeOK() *PublicDownloadContentByShareCodeOK {
	return &PublicDownloadContentByShareCodeOK{}
}

/*PublicDownloadContentByShareCodeOK handles this case with default header values.

  Get content by sharecode
*/
type PublicDownloadContentByShareCodeOK struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponse
}

func (o *PublicDownloadContentByShareCodeOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] publicDownloadContentByShareCodeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicDownloadContentByShareCodeOK) ToJSONString() string {
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

func (o *PublicDownloadContentByShareCodeOK) GetPayload() *ugcclientmodels.ModelsContentDownloadResponse {
	return o.Payload
}

func (o *PublicDownloadContentByShareCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDownloadContentByShareCodeUnauthorized creates a PublicDownloadContentByShareCodeUnauthorized with default headers values
func NewPublicDownloadContentByShareCodeUnauthorized() *PublicDownloadContentByShareCodeUnauthorized {
	return &PublicDownloadContentByShareCodeUnauthorized{}
}

/*PublicDownloadContentByShareCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicDownloadContentByShareCodeUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDownloadContentByShareCodeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] publicDownloadContentByShareCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDownloadContentByShareCodeUnauthorized) ToJSONString() string {
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

func (o *PublicDownloadContentByShareCodeUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDownloadContentByShareCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDownloadContentByShareCodeNotFound creates a PublicDownloadContentByShareCodeNotFound with default headers values
func NewPublicDownloadContentByShareCodeNotFound() *PublicDownloadContentByShareCodeNotFound {
	return &PublicDownloadContentByShareCodeNotFound{}
}

/*PublicDownloadContentByShareCodeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770300</td><td>ugc content not found</td></tr></table>
*/
type PublicDownloadContentByShareCodeNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDownloadContentByShareCodeNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] publicDownloadContentByShareCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDownloadContentByShareCodeNotFound) ToJSONString() string {
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

func (o *PublicDownloadContentByShareCodeNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDownloadContentByShareCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDownloadContentByShareCodeInternalServerError creates a PublicDownloadContentByShareCodeInternalServerError with default headers values
func NewPublicDownloadContentByShareCodeInternalServerError() *PublicDownloadContentByShareCodeInternalServerError {
	return &PublicDownloadContentByShareCodeInternalServerError{}
}

/*PublicDownloadContentByShareCodeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770301</td><td>Unable to get ugc content/Unable to get creator</td></tr><tr><td>770303</td><td>Failed generate download URL</td></tr></table>
*/
type PublicDownloadContentByShareCodeInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDownloadContentByShareCodeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] publicDownloadContentByShareCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDownloadContentByShareCodeInternalServerError) ToJSONString() string {
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

func (o *PublicDownloadContentByShareCodeInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDownloadContentByShareCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
