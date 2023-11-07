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

// PublicGetContentByShareCodeV2Reader is a Reader for the PublicGetContentByShareCodeV2 structure.
type PublicGetContentByShareCodeV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetContentByShareCodeV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetContentByShareCodeV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetContentByShareCodeV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetContentByShareCodeV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetContentByShareCodeV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetContentByShareCodeV2OK creates a PublicGetContentByShareCodeV2OK with default headers values
func NewPublicGetContentByShareCodeV2OK() *PublicGetContentByShareCodeV2OK {
	return &PublicGetContentByShareCodeV2OK{}
}

/*PublicGetContentByShareCodeV2OK handles this case with default header values.

  OK
*/
type PublicGetContentByShareCodeV2OK struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponseV2
}

func (o *PublicGetContentByShareCodeV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] publicGetContentByShareCodeV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetContentByShareCodeV2OK) ToJSONString() string {
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

func (o *PublicGetContentByShareCodeV2OK) GetPayload() *ugcclientmodels.ModelsContentDownloadResponseV2 {
	return o.Payload
}

func (o *PublicGetContentByShareCodeV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentByShareCodeV2Unauthorized creates a PublicGetContentByShareCodeV2Unauthorized with default headers values
func NewPublicGetContentByShareCodeV2Unauthorized() *PublicGetContentByShareCodeV2Unauthorized {
	return &PublicGetContentByShareCodeV2Unauthorized{}
}

/*PublicGetContentByShareCodeV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetContentByShareCodeV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByShareCodeV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] publicGetContentByShareCodeV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetContentByShareCodeV2Unauthorized) ToJSONString() string {
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

func (o *PublicGetContentByShareCodeV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByShareCodeV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentByShareCodeV2NotFound creates a PublicGetContentByShareCodeV2NotFound with default headers values
func NewPublicGetContentByShareCodeV2NotFound() *PublicGetContentByShareCodeV2NotFound {
	return &PublicGetContentByShareCodeV2NotFound{}
}

/*PublicGetContentByShareCodeV2NotFound handles this case with default header values.

  Not Found
*/
type PublicGetContentByShareCodeV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByShareCodeV2NotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] publicGetContentByShareCodeV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetContentByShareCodeV2NotFound) ToJSONString() string {
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

func (o *PublicGetContentByShareCodeV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByShareCodeV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentByShareCodeV2InternalServerError creates a PublicGetContentByShareCodeV2InternalServerError with default headers values
func NewPublicGetContentByShareCodeV2InternalServerError() *PublicGetContentByShareCodeV2InternalServerError {
	return &PublicGetContentByShareCodeV2InternalServerError{}
}

/*PublicGetContentByShareCodeV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetContentByShareCodeV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentByShareCodeV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] publicGetContentByShareCodeV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetContentByShareCodeV2InternalServerError) ToJSONString() string {
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

func (o *PublicGetContentByShareCodeV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentByShareCodeV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
