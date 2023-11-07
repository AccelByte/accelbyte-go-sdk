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

// PublicListContentV2Reader is a Reader for the PublicListContentV2 structure.
type PublicListContentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListContentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListContentV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListContentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListContentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListContentV2OK creates a PublicListContentV2OK with default headers values
func NewPublicListContentV2OK() *PublicListContentV2OK {
	return &PublicListContentV2OK{}
}

/*PublicListContentV2OK handles this case with default header values.

  OK
*/
type PublicListContentV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2
}

func (o *PublicListContentV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents][%d] publicListContentV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicListContentV2OK) ToJSONString() string {
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

func (o *PublicListContentV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2 {
	return o.Payload
}

func (o *PublicListContentV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListContentV2Unauthorized creates a PublicListContentV2Unauthorized with default headers values
func NewPublicListContentV2Unauthorized() *PublicListContentV2Unauthorized {
	return &PublicListContentV2Unauthorized{}
}

/*PublicListContentV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicListContentV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicListContentV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents][%d] publicListContentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListContentV2Unauthorized) ToJSONString() string {
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

func (o *PublicListContentV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListContentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListContentV2InternalServerError creates a PublicListContentV2InternalServerError with default headers values
func NewPublicListContentV2InternalServerError() *PublicListContentV2InternalServerError {
	return &PublicListContentV2InternalServerError{}
}

/*PublicListContentV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicListContentV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicListContentV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents][%d] publicListContentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListContentV2InternalServerError) ToJSONString() string {
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

func (o *PublicListContentV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListContentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
