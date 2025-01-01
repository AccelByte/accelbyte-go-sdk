// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// UpgradeAndAuthenticateForwardV3Reader is a Reader for the UpgradeAndAuthenticateForwardV3 structure.
type UpgradeAndAuthenticateForwardV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpgradeAndAuthenticateForwardV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewUpgradeAndAuthenticateForwardV3Found()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/upgrade/forward returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpgradeAndAuthenticateForwardV3Found creates a UpgradeAndAuthenticateForwardV3Found with default headers values
func NewUpgradeAndAuthenticateForwardV3Found() *UpgradeAndAuthenticateForwardV3Found {
	return &UpgradeAndAuthenticateForwardV3Found{}
}

/*UpgradeAndAuthenticateForwardV3Found handles this case with default header values.

  Found. Redirect to clients redirection URL with code
*/
type UpgradeAndAuthenticateForwardV3Found struct {
	Location string
}

func (o *UpgradeAndAuthenticateForwardV3Found) Error() string {
	return fmt.Sprintf("[POST /iam/v3/upgrade/forward][%d] upgradeAndAuthenticateForwardV3Found ", 302)
}

func (o *UpgradeAndAuthenticateForwardV3Found) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
