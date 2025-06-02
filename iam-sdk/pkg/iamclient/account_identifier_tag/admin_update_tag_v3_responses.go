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

// AdminUpdateTagV3Reader is a Reader for the AdminUpdateTagV3 structure.
type AdminUpdateTagV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateTagV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateTagV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateTagV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateTagV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateTagV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateTagV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/tags/{tagId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateTagV3OK creates a AdminUpdateTagV3OK with default headers values
func NewAdminUpdateTagV3OK() *AdminUpdateTagV3OK {
	return &AdminUpdateTagV3OK{}
}

/*AdminUpdateTagV3OK handles this case with default header values.

  OK
*/
type AdminUpdateTagV3OK struct {
	Payload *iamclientmodels.AccountcommonTagResponse
}

func (o *AdminUpdateTagV3OK) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/tags/{tagId}][%d] adminUpdateTagV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateTagV3OK) ToJSONString() string {
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

func (o *AdminUpdateTagV3OK) GetPayload() *iamclientmodels.AccountcommonTagResponse {
	return o.Payload
}

func (o *AdminUpdateTagV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonTagResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateTagV3BadRequest creates a AdminUpdateTagV3BadRequest with default headers values
func NewAdminUpdateTagV3BadRequest() *AdminUpdateTagV3BadRequest {
	return &AdminUpdateTagV3BadRequest{}
}

/*AdminUpdateTagV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminUpdateTagV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateTagV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/tags/{tagId}][%d] adminUpdateTagV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateTagV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateTagV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateTagV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTagV3NotFound creates a AdminUpdateTagV3NotFound with default headers values
func NewAdminUpdateTagV3NotFound() *AdminUpdateTagV3NotFound {
	return &AdminUpdateTagV3NotFound{}
}

/*AdminUpdateTagV3NotFound handles this case with default header values.


 */
type AdminUpdateTagV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateTagV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/tags/{tagId}][%d] adminUpdateTagV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateTagV3NotFound) ToJSONString() string {
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

func (o *AdminUpdateTagV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateTagV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTagV3Conflict creates a AdminUpdateTagV3Conflict with default headers values
func NewAdminUpdateTagV3Conflict() *AdminUpdateTagV3Conflict {
	return &AdminUpdateTagV3Conflict{}
}

/*AdminUpdateTagV3Conflict handles this case with default header values.


 */
type AdminUpdateTagV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateTagV3Conflict) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/tags/{tagId}][%d] adminUpdateTagV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateTagV3Conflict) ToJSONString() string {
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

func (o *AdminUpdateTagV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateTagV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTagV3InternalServerError creates a AdminUpdateTagV3InternalServerError with default headers values
func NewAdminUpdateTagV3InternalServerError() *AdminUpdateTagV3InternalServerError {
	return &AdminUpdateTagV3InternalServerError{}
}

/*AdminUpdateTagV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateTagV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateTagV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/tags/{tagId}][%d] adminUpdateTagV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateTagV3InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateTagV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateTagV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
