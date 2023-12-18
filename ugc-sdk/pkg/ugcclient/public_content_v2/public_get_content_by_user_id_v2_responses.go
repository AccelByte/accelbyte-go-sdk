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

// PublicGetContentByUserIDV2Reader is a Reader for the PublicGetContentByUserIDV2 structure.
type PublicGetContentByUserIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetContentByUserIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetContentByUserIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetContentByUserIDV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetContentByUserIDV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetContentByUserIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetContentByUserIDV2OK creates a PublicGetContentByUserIDV2OK with default headers values
func NewPublicGetContentByUserIDV2OK() *PublicGetContentByUserIDV2OK {
	return &PublicGetContentByUserIDV2OK{}
}

/*PublicGetContentByUserIDV2OK handles this case with default header values.

  Get content by user ID
*/
type PublicGetContentByUserIDV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2
}

func (o *PublicGetContentByUserIDV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents][%d] publicGetContentByUserIdV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetContentByUserIDV2OK) ToJSONString() string {
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

func (o *PublicGetContentByUserIDV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2 {
	return o.Payload
}

func (o *PublicGetContentByUserIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentByUserIDV2BadRequest creates a PublicGetContentByUserIDV2BadRequest with default headers values
func NewPublicGetContentByUserIDV2BadRequest() *PublicGetContentByUserIDV2BadRequest {
	return &PublicGetContentByUserIDV2BadRequest{}
}

/*PublicGetContentByUserIDV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770900</td><td>invalid paging parameter</td></tr></table>
*/
type PublicGetContentByUserIDV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByUserIDV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents][%d] publicGetContentByUserIdV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetContentByUserIDV2BadRequest) ToJSONString() string {
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

func (o *PublicGetContentByUserIDV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByUserIDV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentByUserIDV2Unauthorized creates a PublicGetContentByUserIDV2Unauthorized with default headers values
func NewPublicGetContentByUserIDV2Unauthorized() *PublicGetContentByUserIDV2Unauthorized {
	return &PublicGetContentByUserIDV2Unauthorized{}
}

/*PublicGetContentByUserIDV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetContentByUserIDV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByUserIDV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents][%d] publicGetContentByUserIdV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetContentByUserIDV2Unauthorized) ToJSONString() string {
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

func (o *PublicGetContentByUserIDV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByUserIDV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentByUserIDV2InternalServerError creates a PublicGetContentByUserIDV2InternalServerError with default headers values
func NewPublicGetContentByUserIDV2InternalServerError() *PublicGetContentByUserIDV2InternalServerError {
	return &PublicGetContentByUserIDV2InternalServerError{}
}

/*PublicGetContentByUserIDV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770901</td><td>Unable to get ugc content: database error/Unable to get creator</td></tr><tr><td>770801</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>770903</td><td>Failed generate download URL</td></tr></table>
*/
type PublicGetContentByUserIDV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByUserIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents][%d] publicGetContentByUserIdV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetContentByUserIDV2InternalServerError) ToJSONString() string {
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

func (o *PublicGetContentByUserIDV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByUserIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
