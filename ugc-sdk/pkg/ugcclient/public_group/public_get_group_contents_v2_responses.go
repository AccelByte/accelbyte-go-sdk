// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_group

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

// PublicGetGroupContentsV2Reader is a Reader for the PublicGetGroupContentsV2 structure.
type PublicGetGroupContentsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetGroupContentsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetGroupContentsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetGroupContentsV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetGroupContentsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetGroupContentsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetGroupContentsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetGroupContentsV2OK creates a PublicGetGroupContentsV2OK with default headers values
func NewPublicGetGroupContentsV2OK() *PublicGetGroupContentsV2OK {
	return &PublicGetGroupContentsV2OK{}
}

/*PublicGetGroupContentsV2OK handles this case with default header values.

  Get content belong to a group
*/
type PublicGetGroupContentsV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2
}

func (o *PublicGetGroupContentsV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] publicGetGroupContentsV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetGroupContentsV2OK) ToJSONString() string {
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

func (o *PublicGetGroupContentsV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2 {
	return o.Payload
}

func (o *PublicGetGroupContentsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetGroupContentsV2BadRequest creates a PublicGetGroupContentsV2BadRequest with default headers values
func NewPublicGetGroupContentsV2BadRequest() *PublicGetGroupContentsV2BadRequest {
	return &PublicGetGroupContentsV2BadRequest{}
}

/*PublicGetGroupContentsV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773101</td><td>invalid paging parameter</td></tr></table>
*/
type PublicGetGroupContentsV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetGroupContentsV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] publicGetGroupContentsV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetGroupContentsV2BadRequest) ToJSONString() string {
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

func (o *PublicGetGroupContentsV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetGroupContentsV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetGroupContentsV2Unauthorized creates a PublicGetGroupContentsV2Unauthorized with default headers values
func NewPublicGetGroupContentsV2Unauthorized() *PublicGetGroupContentsV2Unauthorized {
	return &PublicGetGroupContentsV2Unauthorized{}
}

/*PublicGetGroupContentsV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetGroupContentsV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetGroupContentsV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] publicGetGroupContentsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetGroupContentsV2Unauthorized) ToJSONString() string {
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

func (o *PublicGetGroupContentsV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetGroupContentsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetGroupContentsV2NotFound creates a PublicGetGroupContentsV2NotFound with default headers values
func NewPublicGetGroupContentsV2NotFound() *PublicGetGroupContentsV2NotFound {
	return &PublicGetGroupContentsV2NotFound{}
}

/*PublicGetGroupContentsV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773103</td><td>No group content was found</td></tr></table>
*/
type PublicGetGroupContentsV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetGroupContentsV2NotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] publicGetGroupContentsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetGroupContentsV2NotFound) ToJSONString() string {
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

func (o *PublicGetGroupContentsV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetGroupContentsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetGroupContentsV2InternalServerError creates a PublicGetGroupContentsV2InternalServerError with default headers values
func NewPublicGetGroupContentsV2InternalServerError() *PublicGetGroupContentsV2InternalServerError {
	return &PublicGetGroupContentsV2InternalServerError{}
}

/*PublicGetGroupContentsV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773102</td><td>Unable to get ugc content: database error</td></tr><tr><td>770901</td><td>Unable to get ugc content: database error/Unable to get creator</td></tr><tr><td>770801</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>770903</td><td>Failed generate download URL</td></tr></table>
*/
type PublicGetGroupContentsV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetGroupContentsV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] publicGetGroupContentsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetGroupContentsV2InternalServerError) ToJSONString() string {
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

func (o *PublicGetGroupContentsV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetGroupContentsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
