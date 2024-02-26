// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewGenerateTokenByNewHeadlessAccountV4Params creates a new GenerateTokenByNewHeadlessAccountV4Params object
// with the default values initialized.
func NewGenerateTokenByNewHeadlessAccountV4Params() *GenerateTokenByNewHeadlessAccountV4Params {
	var ()
	return &GenerateTokenByNewHeadlessAccountV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGenerateTokenByNewHeadlessAccountV4ParamsWithTimeout creates a new GenerateTokenByNewHeadlessAccountV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGenerateTokenByNewHeadlessAccountV4ParamsWithTimeout(timeout time.Duration) *GenerateTokenByNewHeadlessAccountV4Params {
	var ()
	return &GenerateTokenByNewHeadlessAccountV4Params{

		timeout: timeout,
	}
}

// NewGenerateTokenByNewHeadlessAccountV4ParamsWithContext creates a new GenerateTokenByNewHeadlessAccountV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewGenerateTokenByNewHeadlessAccountV4ParamsWithContext(ctx context.Context) *GenerateTokenByNewHeadlessAccountV4Params {
	var ()
	return &GenerateTokenByNewHeadlessAccountV4Params{

		Context: ctx,
	}
}

// NewGenerateTokenByNewHeadlessAccountV4ParamsWithHTTPClient creates a new GenerateTokenByNewHeadlessAccountV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGenerateTokenByNewHeadlessAccountV4ParamsWithHTTPClient(client *http.Client) *GenerateTokenByNewHeadlessAccountV4Params {
	var ()
	return &GenerateTokenByNewHeadlessAccountV4Params{
		HTTPClient: client,
	}
}

/*GenerateTokenByNewHeadlessAccountV4Params contains all the parameters to send to the API endpoint
for the generate token by new headless account v4 operation typically these are written to a http.Request
*/
type GenerateTokenByNewHeadlessAccountV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AdditionalData
	  Additional info, it will be passed to login success event.

	*/
	AdditionalData *string
	/*ExtendExp
	  Extend expiration date of refresh token

	*/
	ExtendExp *bool
	/*LinkingToken
	  Platform linking Token

	*/
	LinkingToken string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) WithTimeout(timeout time.Duration) *GenerateTokenByNewHeadlessAccountV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) WithContext(ctx context.Context) *GenerateTokenByNewHeadlessAccountV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) WithHTTPClient(client *http.Client) *GenerateTokenByNewHeadlessAccountV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GenerateTokenByNewHeadlessAccountV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAdditionalData adds the additionalData to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) WithAdditionalData(additionalData *string) *GenerateTokenByNewHeadlessAccountV4Params {
	o.SetAdditionalData(additionalData)
	return o
}

// SetAdditionalData adds the additionalData to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) SetAdditionalData(additionalData *string) {
	o.AdditionalData = additionalData
}

// WithExtendExp adds the extendExp to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) WithExtendExp(extendExp *bool) *GenerateTokenByNewHeadlessAccountV4Params {
	o.SetExtendExp(extendExp)
	return o
}

// SetExtendExp adds the extendExp to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) SetExtendExp(extendExp *bool) {
	o.ExtendExp = extendExp
}

// WithLinkingToken adds the linkingToken to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) WithLinkingToken(linkingToken string) *GenerateTokenByNewHeadlessAccountV4Params {
	o.SetLinkingToken(linkingToken)
	return o
}

// SetLinkingToken adds the linkingToken to the generate token by new headless account v4 params
func (o *GenerateTokenByNewHeadlessAccountV4Params) SetLinkingToken(linkingToken string) {
	o.LinkingToken = linkingToken
}

// WriteToRequest writes these params to a swagger request
func (o *GenerateTokenByNewHeadlessAccountV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.AdditionalData != nil {

		// form param additionalData
		var frAdditionalData string
		if o.AdditionalData != nil {
			frAdditionalData = *o.AdditionalData
		}
		fAdditionalData := frAdditionalData
		if fAdditionalData != "" {
			if err := r.SetFormParam("additionalData", fAdditionalData); err != nil {
				return err
			}
		}

	}

	if o.ExtendExp != nil {

		// form param extend_exp
		var frExtendExp bool
		if o.ExtendExp != nil {
			frExtendExp = *o.ExtendExp
		}
		fExtendExp := swag.FormatBool(frExtendExp)
		if fExtendExp != "" {
			if err := r.SetFormParam("extend_exp", fExtendExp); err != nil {
				return err
			}
		}

	}

	// form param linkingToken
	frLinkingToken := o.LinkingToken
	fLinkingToken := frLinkingToken
	if fLinkingToken != "" {
		if err := r.SetFormParam("linkingToken", fLinkingToken); err != nil {
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
