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

// PublicBulkGetContentByIDV2Reader is a Reader for the PublicBulkGetContentByIDV2 structure.
type PublicBulkGetContentByIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkGetContentByIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkGetContentByIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBulkGetContentByIDV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicBulkGetContentByIDV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicBulkGetContentByIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/public/namespaces/{namespace}/contents/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkGetContentByIDV2OK creates a PublicBulkGetContentByIDV2OK with default headers values
func NewPublicBulkGetContentByIDV2OK() *PublicBulkGetContentByIDV2OK {
	return &PublicBulkGetContentByIDV2OK{}
}

/*PublicBulkGetContentByIDV2OK handles this case with default header values.

  Get contents by content Ids
*/
type PublicBulkGetContentByIDV2OK struct {
	Payload []*ugcclientmodels.ModelsContentDownloadResponseV2
}

func (o *PublicBulkGetContentByIDV2OK) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/bulk][%d] publicBulkGetContentByIdV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkGetContentByIDV2OK) ToJSONString() string {
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

func (o *PublicBulkGetContentByIDV2OK) GetPayload() []*ugcclientmodels.ModelsContentDownloadResponseV2 {
	return o.Payload
}

func (o *PublicBulkGetContentByIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicBulkGetContentByIDV2BadRequest creates a PublicBulkGetContentByIDV2BadRequest with default headers values
func NewPublicBulkGetContentByIDV2BadRequest() *PublicBulkGetContentByIDV2BadRequest {
	return &PublicBulkGetContentByIDV2BadRequest{}
}

/*PublicBulkGetContentByIDV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773900</td><td>Malformed request/Invalid request body</td></tr></table>
*/
type PublicBulkGetContentByIDV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicBulkGetContentByIDV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/bulk][%d] publicBulkGetContentByIdV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBulkGetContentByIDV2BadRequest) ToJSONString() string {
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

func (o *PublicBulkGetContentByIDV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicBulkGetContentByIDV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicBulkGetContentByIDV2Unauthorized creates a PublicBulkGetContentByIDV2Unauthorized with default headers values
func NewPublicBulkGetContentByIDV2Unauthorized() *PublicBulkGetContentByIDV2Unauthorized {
	return &PublicBulkGetContentByIDV2Unauthorized{}
}

/*PublicBulkGetContentByIDV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicBulkGetContentByIDV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicBulkGetContentByIDV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/bulk][%d] publicBulkGetContentByIdV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicBulkGetContentByIDV2Unauthorized) ToJSONString() string {
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

func (o *PublicBulkGetContentByIDV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicBulkGetContentByIDV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicBulkGetContentByIDV2InternalServerError creates a PublicBulkGetContentByIDV2InternalServerError with default headers values
func NewPublicBulkGetContentByIDV2InternalServerError() *PublicBulkGetContentByIDV2InternalServerError {
	return &PublicBulkGetContentByIDV2InternalServerError{}
}

/*PublicBulkGetContentByIDV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770801</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>773902</td><td>Failed generate download URL</td></tr></table>
*/
type PublicBulkGetContentByIDV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicBulkGetContentByIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/contents/bulk][%d] publicBulkGetContentByIdV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicBulkGetContentByIDV2InternalServerError) ToJSONString() string {
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

func (o *PublicBulkGetContentByIDV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicBulkGetContentByIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
