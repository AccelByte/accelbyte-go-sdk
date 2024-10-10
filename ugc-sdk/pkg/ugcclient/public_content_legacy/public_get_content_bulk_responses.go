// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

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

// PublicGetContentBulkReader is a Reader for the PublicGetContentBulk structure.
type PublicGetContentBulkReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetContentBulkReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetContentBulkOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetContentBulkBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetContentBulkUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetContentBulkInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/public/namespaces/{namespace}/contents/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetContentBulkOK creates a PublicGetContentBulkOK with default headers values
func NewPublicGetContentBulkOK() *PublicGetContentBulkOK {
	return &PublicGetContentBulkOK{}
}

/*PublicGetContentBulkOK handles this case with default header values.

  Get contents by content Ids
*/
type PublicGetContentBulkOK struct {
	Payload []*ugcclientmodels.ModelsContentDownloadResponse
}

func (o *PublicGetContentBulkOK) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/contents/bulk][%d] publicGetContentBulkOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetContentBulkOK) ToJSONString() string {
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

func (o *PublicGetContentBulkOK) GetPayload() []*ugcclientmodels.ModelsContentDownloadResponse {
	return o.Payload
}

func (o *PublicGetContentBulkOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetContentBulkBadRequest creates a PublicGetContentBulkBadRequest with default headers values
func NewPublicGetContentBulkBadRequest() *PublicGetContentBulkBadRequest {
	return &PublicGetContentBulkBadRequest{}
}

/*PublicGetContentBulkBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773900</td><td>Malformed request/Invalid request body</td></tr></table>
*/
type PublicGetContentBulkBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/contents/bulk][%d] publicGetContentBulkBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetContentBulkBadRequest) ToJSONString() string {
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

func (o *PublicGetContentBulkBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetContentBulkUnauthorized creates a PublicGetContentBulkUnauthorized with default headers values
func NewPublicGetContentBulkUnauthorized() *PublicGetContentBulkUnauthorized {
	return &PublicGetContentBulkUnauthorized{}
}

/*PublicGetContentBulkUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetContentBulkUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/contents/bulk][%d] publicGetContentBulkUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetContentBulkUnauthorized) ToJSONString() string {
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

func (o *PublicGetContentBulkUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetContentBulkInternalServerError creates a PublicGetContentBulkInternalServerError with default headers values
func NewPublicGetContentBulkInternalServerError() *PublicGetContentBulkInternalServerError {
	return &PublicGetContentBulkInternalServerError{}
}

/*PublicGetContentBulkInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773901</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>773902</td><td>Failed generate download URL</td></tr></table>
*/
type PublicGetContentBulkInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/contents/bulk][%d] publicGetContentBulkInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetContentBulkInternalServerError) ToJSONString() string {
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

func (o *PublicGetContentBulkInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
