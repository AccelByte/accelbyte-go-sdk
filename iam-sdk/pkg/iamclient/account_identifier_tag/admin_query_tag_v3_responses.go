// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package account_identifier_tag

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminQueryTagV3Reader is a Reader for the AdminQueryTagV3 structure.
type AdminQueryTagV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryTagV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryTagV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryTagV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/tags returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryTagV3OK creates a AdminQueryTagV3OK with default headers values
func NewAdminQueryTagV3OK() *AdminQueryTagV3OK {
	return &AdminQueryTagV3OK{}
}

/*AdminQueryTagV3OK handles this case with default header values.

  OK
*/
type AdminQueryTagV3OK struct {
	Payload *iamclientmodels.AccountcommonTagsGetResponseV3
}

func (o *AdminQueryTagV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/tags][%d] adminQueryTagV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryTagV3OK) ToJSONString() string {
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

func (o *AdminQueryTagV3OK) GetPayload() *iamclientmodels.AccountcommonTagsGetResponseV3 {
	return o.Payload
}

func (o *AdminQueryTagV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonTagsGetResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryTagV3InternalServerError creates a AdminQueryTagV3InternalServerError with default headers values
func NewAdminQueryTagV3InternalServerError() *AdminQueryTagV3InternalServerError {
	return &AdminQueryTagV3InternalServerError{}
}

/*AdminQueryTagV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminQueryTagV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminQueryTagV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/tags][%d] adminQueryTagV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryTagV3InternalServerError) ToJSONString() string {
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

func (o *AdminQueryTagV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminQueryTagV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
