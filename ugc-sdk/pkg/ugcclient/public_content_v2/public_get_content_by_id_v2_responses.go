// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// PublicGetContentByIDV2Reader is a Reader for the PublicGetContentByIDV2 structure.
type PublicGetContentByIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetContentByIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetContentByIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetContentByIDV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetContentByIDV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetContentByIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetContentByIDV2OK creates a PublicGetContentByIDV2OK with default headers values
func NewPublicGetContentByIDV2OK() *PublicGetContentByIDV2OK {
	return &PublicGetContentByIDV2OK{}
}

/*PublicGetContentByIDV2OK handles this case with default header values.

  Get content by content ID
*/
type PublicGetContentByIDV2OK struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponseV2
}

func (o *PublicGetContentByIDV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}][%d] publicGetContentByIdV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetContentByIDV2OK) ToJSONString() string {
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

func (o *PublicGetContentByIDV2OK) GetPayload() *ugcclientmodels.ModelsContentDownloadResponseV2 {
	return o.Payload
}

func (o *PublicGetContentByIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsContentDownloadResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetContentByIDV2Unauthorized creates a PublicGetContentByIDV2Unauthorized with default headers values
func NewPublicGetContentByIDV2Unauthorized() *PublicGetContentByIDV2Unauthorized {
	return &PublicGetContentByIDV2Unauthorized{}
}

/*PublicGetContentByIDV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetContentByIDV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByIDV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}][%d] publicGetContentByIdV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetContentByIDV2Unauthorized) ToJSONString() string {
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

func (o *PublicGetContentByIDV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByIDV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentByIDV2NotFound creates a PublicGetContentByIDV2NotFound with default headers values
func NewPublicGetContentByIDV2NotFound() *PublicGetContentByIDV2NotFound {
	return &PublicGetContentByIDV2NotFound{}
}

/*PublicGetContentByIDV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773200</td><td>ugc content not found</td></tr></table>
*/
type PublicGetContentByIDV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByIDV2NotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}][%d] publicGetContentByIdV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetContentByIDV2NotFound) ToJSONString() string {
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

func (o *PublicGetContentByIDV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByIDV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentByIDV2InternalServerError creates a PublicGetContentByIDV2InternalServerError with default headers values
func NewPublicGetContentByIDV2InternalServerError() *PublicGetContentByIDV2InternalServerError {
	return &PublicGetContentByIDV2InternalServerError{}
}

/*PublicGetContentByIDV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773201</td><td>Unable to get ugc content/Unable to get creator/Unable to get included group</td></tr><tr><td>770301</td><td>Unable to get ugc content/Unable to get creator</td></tr><tr><td>773203</td><td>Failed generate download URL</td></tr></table>
*/
type PublicGetContentByIDV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}][%d] publicGetContentByIdV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetContentByIDV2InternalServerError) ToJSONString() string {
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

func (o *PublicGetContentByIDV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
