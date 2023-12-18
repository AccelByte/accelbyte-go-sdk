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

// PublicListContentDownloaderV2Reader is a Reader for the PublicListContentDownloaderV2 structure.
type PublicListContentDownloaderV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListContentDownloaderV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListContentDownloaderV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListContentDownloaderV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListContentDownloaderV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListContentDownloaderV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloader returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListContentDownloaderV2OK creates a PublicListContentDownloaderV2OK with default headers values
func NewPublicListContentDownloaderV2OK() *PublicListContentDownloaderV2OK {
	return &PublicListContentDownloaderV2OK{}
}

/*PublicListContentDownloaderV2OK handles this case with default header values.

  List content downloader
*/
type PublicListContentDownloaderV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloaderResponse
}

func (o *PublicListContentDownloaderV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloader][%d] publicListContentDownloaderV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicListContentDownloaderV2OK) ToJSONString() string {
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

func (o *PublicListContentDownloaderV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloaderResponse {
	return o.Payload
}

func (o *PublicListContentDownloaderV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloaderResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListContentDownloaderV2BadRequest creates a PublicListContentDownloaderV2BadRequest with default headers values
func NewPublicListContentDownloaderV2BadRequest() *PublicListContentDownloaderV2BadRequest {
	return &PublicListContentDownloaderV2BadRequest{}
}

/*PublicListContentDownloaderV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770800</td><td>invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter</td></tr></table>
*/
type PublicListContentDownloaderV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicListContentDownloaderV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloader][%d] publicListContentDownloaderV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListContentDownloaderV2BadRequest) ToJSONString() string {
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

func (o *PublicListContentDownloaderV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListContentDownloaderV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListContentDownloaderV2Unauthorized creates a PublicListContentDownloaderV2Unauthorized with default headers values
func NewPublicListContentDownloaderV2Unauthorized() *PublicListContentDownloaderV2Unauthorized {
	return &PublicListContentDownloaderV2Unauthorized{}
}

/*PublicListContentDownloaderV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicListContentDownloaderV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicListContentDownloaderV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloader][%d] publicListContentDownloaderV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListContentDownloaderV2Unauthorized) ToJSONString() string {
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

func (o *PublicListContentDownloaderV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListContentDownloaderV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListContentDownloaderV2InternalServerError creates a PublicListContentDownloaderV2InternalServerError with default headers values
func NewPublicListContentDownloaderV2InternalServerError() *PublicListContentDownloaderV2InternalServerError {
	return &PublicListContentDownloaderV2InternalServerError{}
}

/*PublicListContentDownloaderV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772904</td><td>Unable to list content downloader: database error</td></tr></table>
*/
type PublicListContentDownloaderV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicListContentDownloaderV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloader][%d] publicListContentDownloaderV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListContentDownloaderV2InternalServerError) ToJSONString() string {
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

func (o *PublicListContentDownloaderV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListContentDownloaderV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
