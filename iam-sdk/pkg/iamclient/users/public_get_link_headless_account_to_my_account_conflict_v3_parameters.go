// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Params creates a new PublicGetLinkHeadlessAccountToMyAccountConflictV3Params object
// with the default values initialized.
func NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Params() *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params {
	var ()
	return &PublicGetLinkHeadlessAccountToMyAccountConflictV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetLinkHeadlessAccountToMyAccountConflictV3ParamsWithTimeout creates a new PublicGetLinkHeadlessAccountToMyAccountConflictV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetLinkHeadlessAccountToMyAccountConflictV3ParamsWithTimeout(timeout time.Duration) *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params {
	var ()
	return &PublicGetLinkHeadlessAccountToMyAccountConflictV3Params{

		timeout: timeout,
	}
}

// NewPublicGetLinkHeadlessAccountToMyAccountConflictV3ParamsWithContext creates a new PublicGetLinkHeadlessAccountToMyAccountConflictV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetLinkHeadlessAccountToMyAccountConflictV3ParamsWithContext(ctx context.Context) *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params {
	var ()
	return &PublicGetLinkHeadlessAccountToMyAccountConflictV3Params{

		Context: ctx,
	}
}

// NewPublicGetLinkHeadlessAccountToMyAccountConflictV3ParamsWithHTTPClient creates a new PublicGetLinkHeadlessAccountToMyAccountConflictV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetLinkHeadlessAccountToMyAccountConflictV3ParamsWithHTTPClient(client *http.Client) *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params {
	var ()
	return &PublicGetLinkHeadlessAccountToMyAccountConflictV3Params{
		HTTPClient: client,
	}
}

/*PublicGetLinkHeadlessAccountToMyAccountConflictV3Params contains all the parameters to send to the API endpoint
for the public get link headless account to my account conflict v3 operation typically these are written to a http.Request
*/
type PublicGetLinkHeadlessAccountToMyAccountConflictV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*OneTimeLinkCode
	  one time linking code

	*/
	OneTimeLinkCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) WithTimeout(timeout time.Duration) *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) WithContext(ctx context.Context) *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) WithHTTPClient(client *http.Client) *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithOneTimeLinkCode adds the oneTimeLinkCode to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) WithOneTimeLinkCode(oneTimeLinkCode string) *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params {
	o.SetOneTimeLinkCode(oneTimeLinkCode)
	return o
}

// SetOneTimeLinkCode adds the oneTimeLinkCode to the public get link headless account to my account conflict v3 params
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) SetOneTimeLinkCode(oneTimeLinkCode string) {
	o.OneTimeLinkCode = oneTimeLinkCode
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// query param oneTimeLinkCode
	qrOneTimeLinkCode := o.OneTimeLinkCode
	qOneTimeLinkCode := qrOneTimeLinkCode
	if qOneTimeLinkCode != "" {
		if err := r.SetQueryParam("oneTimeLinkCode", qOneTimeLinkCode); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
