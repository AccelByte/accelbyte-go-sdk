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

// PublicGetContentByChannelIDV2Reader is a Reader for the PublicGetContentByChannelIDV2 structure.
type PublicGetContentByChannelIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetContentByChannelIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetContentByChannelIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetContentByChannelIDV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetContentByChannelIDV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetContentByChannelIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/channels/{channelId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetContentByChannelIDV2OK creates a PublicGetContentByChannelIDV2OK with default headers values
func NewPublicGetContentByChannelIDV2OK() *PublicGetContentByChannelIDV2OK {
	return &PublicGetContentByChannelIDV2OK{}
}

/*PublicGetContentByChannelIDV2OK handles this case with default header values.

  List content specific to a channel
*/
type PublicGetContentByChannelIDV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2
}

func (o *PublicGetContentByChannelIDV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/channels/{channelId}/contents][%d] publicGetContentByChannelIdV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetContentByChannelIDV2OK) ToJSONString() string {
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

func (o *PublicGetContentByChannelIDV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2 {
	return o.Payload
}

func (o *PublicGetContentByChannelIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetContentByChannelIDV2BadRequest creates a PublicGetContentByChannelIDV2BadRequest with default headers values
func NewPublicGetContentByChannelIDV2BadRequest() *PublicGetContentByChannelIDV2BadRequest {
	return &PublicGetContentByChannelIDV2BadRequest{}
}

/*PublicGetContentByChannelIDV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770804</td><td>invalid paging parameter</td></tr></table>
*/
type PublicGetContentByChannelIDV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByChannelIDV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/channels/{channelId}/contents][%d] publicGetContentByChannelIdV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetContentByChannelIDV2BadRequest) ToJSONString() string {
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

func (o *PublicGetContentByChannelIDV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByChannelIDV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetContentByChannelIDV2Unauthorized creates a PublicGetContentByChannelIDV2Unauthorized with default headers values
func NewPublicGetContentByChannelIDV2Unauthorized() *PublicGetContentByChannelIDV2Unauthorized {
	return &PublicGetContentByChannelIDV2Unauthorized{}
}

/*PublicGetContentByChannelIDV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetContentByChannelIDV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByChannelIDV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/channels/{channelId}/contents][%d] publicGetContentByChannelIdV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetContentByChannelIDV2Unauthorized) ToJSONString() string {
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

func (o *PublicGetContentByChannelIDV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByChannelIDV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetContentByChannelIDV2InternalServerError creates a PublicGetContentByChannelIDV2InternalServerError with default headers values
func NewPublicGetContentByChannelIDV2InternalServerError() *PublicGetContentByChannelIDV2InternalServerError {
	return &PublicGetContentByChannelIDV2InternalServerError{}
}

/*PublicGetContentByChannelIDV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770805</td><td>Unable to get ugc content: database error</td></tr></table>
*/
type PublicGetContentByChannelIDV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByChannelIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/channels/{channelId}/contents][%d] publicGetContentByChannelIdV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetContentByChannelIDV2InternalServerError) ToJSONString() string {
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

func (o *PublicGetContentByChannelIDV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByChannelIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
