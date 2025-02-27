// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// PublicGetRolesV3Reader is a Reader for the PublicGetRolesV3 structure.
type PublicGetRolesV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetRolesV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetRolesV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetRolesV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetRolesV3OK creates a PublicGetRolesV3OK with default headers values
func NewPublicGetRolesV3OK() *PublicGetRolesV3OK {
	return &PublicGetRolesV3OK{}
}

/*PublicGetRolesV3OK handles this case with default header values.

  OK
*/
type PublicGetRolesV3OK struct {
	Payload *iamclientmodels.ModelRoleNamesResponseV3
}

func (o *PublicGetRolesV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/roles][%d] publicGetRolesV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetRolesV3OK) ToJSONString() string {
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

func (o *PublicGetRolesV3OK) GetPayload() *iamclientmodels.ModelRoleNamesResponseV3 {
	return o.Payload
}

func (o *PublicGetRolesV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleNamesResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetRolesV3BadRequest creates a PublicGetRolesV3BadRequest with default headers values
func NewPublicGetRolesV3BadRequest() *PublicGetRolesV3BadRequest {
	return &PublicGetRolesV3BadRequest{}
}

/*PublicGetRolesV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetRolesV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetRolesV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/roles][%d] publicGetRolesV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetRolesV3BadRequest) ToJSONString() string {
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

func (o *PublicGetRolesV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetRolesV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
