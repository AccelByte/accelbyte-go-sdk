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

// PublicGetContentBulkByShareCodesV2Reader is a Reader for the PublicGetContentBulkByShareCodesV2 structure.
type PublicGetContentBulkByShareCodesV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetContentBulkByShareCodesV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetContentBulkByShareCodesV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetContentBulkByShareCodesV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetContentBulkByShareCodesV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetContentBulkByShareCodesV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetContentBulkByShareCodesV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetContentBulkByShareCodesV2OK creates a PublicGetContentBulkByShareCodesV2OK with default headers values
func NewPublicGetContentBulkByShareCodesV2OK() *PublicGetContentBulkByShareCodesV2OK {
	return &PublicGetContentBulkByShareCodesV2OK{}
}

/*PublicGetContentBulkByShareCodesV2OK handles this case with default header values.

  OK
*/
type PublicGetContentBulkByShareCodesV2OK struct {
	Payload []*ugcclientmodels.ModelsContentDownloadResponseV2
}

func (o *PublicGetContentBulkByShareCodesV2OK) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesV2OK) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesV2OK) GetPayload() []*ugcclientmodels.ModelsContentDownloadResponseV2 {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetContentBulkByShareCodesV2BadRequest creates a PublicGetContentBulkByShareCodesV2BadRequest with default headers values
func NewPublicGetContentBulkByShareCodesV2BadRequest() *PublicGetContentBulkByShareCodesV2BadRequest {
	return &PublicGetContentBulkByShareCodesV2BadRequest{}
}

/*PublicGetContentBulkByShareCodesV2BadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetContentBulkByShareCodesV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkByShareCodesV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesV2BadRequest) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentBulkByShareCodesV2Unauthorized creates a PublicGetContentBulkByShareCodesV2Unauthorized with default headers values
func NewPublicGetContentBulkByShareCodesV2Unauthorized() *PublicGetContentBulkByShareCodesV2Unauthorized {
	return &PublicGetContentBulkByShareCodesV2Unauthorized{}
}

/*PublicGetContentBulkByShareCodesV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetContentBulkByShareCodesV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkByShareCodesV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesV2Unauthorized) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentBulkByShareCodesV2Forbidden creates a PublicGetContentBulkByShareCodesV2Forbidden with default headers values
func NewPublicGetContentBulkByShareCodesV2Forbidden() *PublicGetContentBulkByShareCodesV2Forbidden {
	return &PublicGetContentBulkByShareCodesV2Forbidden{}
}

/*PublicGetContentBulkByShareCodesV2Forbidden handles this case with default header values.

  Forbidden
*/
type PublicGetContentBulkByShareCodesV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkByShareCodesV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesV2Forbidden) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetContentBulkByShareCodesV2InternalServerError creates a PublicGetContentBulkByShareCodesV2InternalServerError with default headers values
func NewPublicGetContentBulkByShareCodesV2InternalServerError() *PublicGetContentBulkByShareCodesV2InternalServerError {
	return &PublicGetContentBulkByShareCodesV2InternalServerError{}
}

/*PublicGetContentBulkByShareCodesV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetContentBulkByShareCodesV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkByShareCodesV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesV2InternalServerError) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
