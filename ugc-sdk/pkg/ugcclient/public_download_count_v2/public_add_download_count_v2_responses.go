// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_download_count_v2

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

// PublicAddDownloadCountV2Reader is a Reader for the PublicAddDownloadCountV2 structure.
type PublicAddDownloadCountV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicAddDownloadCountV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicAddDownloadCountV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicAddDownloadCountV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicAddDownloadCountV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicAddDownloadCountV2TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicAddDownloadCountV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloadcount returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicAddDownloadCountV2OK creates a PublicAddDownloadCountV2OK with default headers values
func NewPublicAddDownloadCountV2OK() *PublicAddDownloadCountV2OK {
	return &PublicAddDownloadCountV2OK{}
}

/*PublicAddDownloadCountV2OK handles this case with default header values.

  Added download count to a content
*/
type PublicAddDownloadCountV2OK struct {
	Payload *ugcclientmodels.ModelsAddDownloadCountResponse
}

func (o *PublicAddDownloadCountV2OK) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloadcount][%d] publicAddDownloadCountV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicAddDownloadCountV2OK) ToJSONString() string {
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

func (o *PublicAddDownloadCountV2OK) GetPayload() *ugcclientmodels.ModelsAddDownloadCountResponse {
	return o.Payload
}

func (o *PublicAddDownloadCountV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsAddDownloadCountResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicAddDownloadCountV2Unauthorized creates a PublicAddDownloadCountV2Unauthorized with default headers values
func NewPublicAddDownloadCountV2Unauthorized() *PublicAddDownloadCountV2Unauthorized {
	return &PublicAddDownloadCountV2Unauthorized{}
}

/*PublicAddDownloadCountV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicAddDownloadCountV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicAddDownloadCountV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloadcount][%d] publicAddDownloadCountV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicAddDownloadCountV2Unauthorized) ToJSONString() string {
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

func (o *PublicAddDownloadCountV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicAddDownloadCountV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicAddDownloadCountV2NotFound creates a PublicAddDownloadCountV2NotFound with default headers values
func NewPublicAddDownloadCountV2NotFound() *PublicAddDownloadCountV2NotFound {
	return &PublicAddDownloadCountV2NotFound{}
}

/*PublicAddDownloadCountV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772903</td><td>Unable to add content download: content not found</td></tr></table>
*/
type PublicAddDownloadCountV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicAddDownloadCountV2NotFound) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloadcount][%d] publicAddDownloadCountV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicAddDownloadCountV2NotFound) ToJSONString() string {
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

func (o *PublicAddDownloadCountV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicAddDownloadCountV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicAddDownloadCountV2TooManyRequests creates a PublicAddDownloadCountV2TooManyRequests with default headers values
func NewPublicAddDownloadCountV2TooManyRequests() *PublicAddDownloadCountV2TooManyRequests {
	return &PublicAddDownloadCountV2TooManyRequests{}
}

/*PublicAddDownloadCountV2TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772906</td><td>Unable to add content download: too many request</td></tr></table>
*/
type PublicAddDownloadCountV2TooManyRequests struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicAddDownloadCountV2TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloadcount][%d] publicAddDownloadCountV2TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicAddDownloadCountV2TooManyRequests) ToJSONString() string {
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

func (o *PublicAddDownloadCountV2TooManyRequests) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicAddDownloadCountV2TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicAddDownloadCountV2InternalServerError creates a PublicAddDownloadCountV2InternalServerError with default headers values
func NewPublicAddDownloadCountV2InternalServerError() *PublicAddDownloadCountV2InternalServerError {
	return &PublicAddDownloadCountV2InternalServerError{}
}

/*PublicAddDownloadCountV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772902</td><td>Unable to add content download: database error</td></tr></table>
*/
type PublicAddDownloadCountV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicAddDownloadCountV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloadcount][%d] publicAddDownloadCountV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicAddDownloadCountV2InternalServerError) ToJSONString() string {
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

func (o *PublicAddDownloadCountV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicAddDownloadCountV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
