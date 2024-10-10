// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// PublicProcessWebLinkPlatformV3Reader is a Reader for the PublicProcessWebLinkPlatformV3 structure.
type PublicProcessWebLinkPlatformV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicProcessWebLinkPlatformV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicProcessWebLinkPlatformV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicProcessWebLinkPlatformV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/process returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicProcessWebLinkPlatformV3OK creates a PublicProcessWebLinkPlatformV3OK with default headers values
func NewPublicProcessWebLinkPlatformV3OK() *PublicProcessWebLinkPlatformV3OK {
	return &PublicProcessWebLinkPlatformV3OK{}
}

/*PublicProcessWebLinkPlatformV3OK handles this case with default header values.

  OK
*/
type PublicProcessWebLinkPlatformV3OK struct {
	Payload *iamclientmodels.ModelLinkRequest
}

func (o *PublicProcessWebLinkPlatformV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/process][%d] publicProcessWebLinkPlatformV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicProcessWebLinkPlatformV3OK) ToJSONString() string {
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

func (o *PublicProcessWebLinkPlatformV3OK) GetPayload() *iamclientmodels.ModelLinkRequest {
	return o.Payload
}

func (o *PublicProcessWebLinkPlatformV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelLinkRequest)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicProcessWebLinkPlatformV3BadRequest creates a PublicProcessWebLinkPlatformV3BadRequest with default headers values
func NewPublicProcessWebLinkPlatformV3BadRequest() *PublicProcessWebLinkPlatformV3BadRequest {
	return &PublicProcessWebLinkPlatformV3BadRequest{}
}

/*PublicProcessWebLinkPlatformV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicProcessWebLinkPlatformV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicProcessWebLinkPlatformV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/process][%d] publicProcessWebLinkPlatformV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicProcessWebLinkPlatformV3BadRequest) ToJSONString() string {
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

func (o *PublicProcessWebLinkPlatformV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicProcessWebLinkPlatformV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
