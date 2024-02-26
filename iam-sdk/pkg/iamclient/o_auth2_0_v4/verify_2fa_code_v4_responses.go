// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

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

// Verify2FACodeV4Reader is a Reader for the Verify2FACodeV4 structure.
type Verify2FACodeV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *Verify2FACodeV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewVerify2FACodeV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 202:
		result := NewVerify2FACodeV4Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewVerify2FACodeV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/oauth/mfa/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewVerify2FACodeV4OK creates a Verify2FACodeV4OK with default headers values
func NewVerify2FACodeV4OK() *Verify2FACodeV4OK {
	return &Verify2FACodeV4OK{}
}

/*Verify2FACodeV4OK handles this case with default header values.

  Token returned
*/
type Verify2FACodeV4OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *Verify2FACodeV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/mfa/verify][%d] verify2faCodeV4OK  %+v", 200, o.ToJSONString())
}

func (o *Verify2FACodeV4OK) ToJSONString() string {
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

func (o *Verify2FACodeV4OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *Verify2FACodeV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewVerify2FACodeV4Accepted creates a Verify2FACodeV4Accepted with default headers values
func NewVerify2FACodeV4Accepted() *Verify2FACodeV4Accepted {
	return &Verify2FACodeV4Accepted{}
}

/*Verify2FACodeV4Accepted handles this case with default header values.

  Login queue ticket returned
*/
type Verify2FACodeV4Accepted struct {
	Payload *iamclientmodels.OauthmodelLoginQueueTicketResponse
}

func (o *Verify2FACodeV4Accepted) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/mfa/verify][%d] verify2faCodeV4Accepted  %+v", 202, o.ToJSONString())
}

func (o *Verify2FACodeV4Accepted) ToJSONString() string {
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

func (o *Verify2FACodeV4Accepted) GetPayload() *iamclientmodels.OauthmodelLoginQueueTicketResponse {
	return o.Payload
}

func (o *Verify2FACodeV4Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelLoginQueueTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewVerify2FACodeV4Unauthorized creates a Verify2FACodeV4Unauthorized with default headers values
func NewVerify2FACodeV4Unauthorized() *Verify2FACodeV4Unauthorized {
	return &Verify2FACodeV4Unauthorized{}
}

/*Verify2FACodeV4Unauthorized handles this case with default header values.

  Unauthorized
*/
type Verify2FACodeV4Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *Verify2FACodeV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/mfa/verify][%d] verify2faCodeV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *Verify2FACodeV4Unauthorized) ToJSONString() string {
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

func (o *Verify2FACodeV4Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *Verify2FACodeV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
