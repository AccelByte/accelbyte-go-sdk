// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// PublicUpgradeHeadlessWithCodeV4ForwardReader is a Reader for the PublicUpgradeHeadlessWithCodeV4Forward structure.
type PublicUpgradeHeadlessWithCodeV4ForwardReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpgradeHeadlessWithCodeV4ForwardReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewPublicUpgradeHeadlessWithCodeV4ForwardFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/users/me/headless/code/verify/forward returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpgradeHeadlessWithCodeV4ForwardFound creates a PublicUpgradeHeadlessWithCodeV4ForwardFound with default headers values
func NewPublicUpgradeHeadlessWithCodeV4ForwardFound() *PublicUpgradeHeadlessWithCodeV4ForwardFound {
	return &PublicUpgradeHeadlessWithCodeV4ForwardFound{}
}

/*PublicUpgradeHeadlessWithCodeV4ForwardFound handles this case with default header values.

  Found. Redirected to login website with result.</br> If validateOnly=true, then the redirection with contain validate result;</br>If validateOnly=false, then the redirection will contain the upgrade result. If upgrade succeed, then the response will contain upgrade_success_token
*/
type PublicUpgradeHeadlessWithCodeV4ForwardFound struct {
	Location string
}

func (o *PublicUpgradeHeadlessWithCodeV4ForwardFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/users/me/headless/code/verify/forward][%d] publicUpgradeHeadlessWithCodeV4ForwardFound ", 302)
}

func (o *PublicUpgradeHeadlessWithCodeV4ForwardFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
