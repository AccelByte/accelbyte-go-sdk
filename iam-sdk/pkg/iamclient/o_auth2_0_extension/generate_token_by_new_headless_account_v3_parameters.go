// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

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

// NewGenerateTokenByNewHeadlessAccountV3Params creates a new GenerateTokenByNewHeadlessAccountV3Params object
// with the default values initialized.
func NewGenerateTokenByNewHeadlessAccountV3Params() *GenerateTokenByNewHeadlessAccountV3Params {
	var ()
	return &GenerateTokenByNewHeadlessAccountV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGenerateTokenByNewHeadlessAccountV3ParamsWithTimeout creates a new GenerateTokenByNewHeadlessAccountV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGenerateTokenByNewHeadlessAccountV3ParamsWithTimeout(timeout time.Duration) *GenerateTokenByNewHeadlessAccountV3Params {
	var ()
	return &GenerateTokenByNewHeadlessAccountV3Params{

		timeout: timeout,
	}
}

// NewGenerateTokenByNewHeadlessAccountV3ParamsWithContext creates a new GenerateTokenByNewHeadlessAccountV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGenerateTokenByNewHeadlessAccountV3ParamsWithContext(ctx context.Context) *GenerateTokenByNewHeadlessAccountV3Params {
	var ()
	return &GenerateTokenByNewHeadlessAccountV3Params{

		Context: ctx,
	}
}

// NewGenerateTokenByNewHeadlessAccountV3ParamsWithHTTPClient creates a new GenerateTokenByNewHeadlessAccountV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGenerateTokenByNewHeadlessAccountV3ParamsWithHTTPClient(client *http.Client) *GenerateTokenByNewHeadlessAccountV3Params {
	var ()
	return &GenerateTokenByNewHeadlessAccountV3Params{
		HTTPClient: client,
	}
}

/*GenerateTokenByNewHeadlessAccountV3Params contains all the parameters to send to the API endpoint
for the generate token by new headless account v3 operation typically these are written to a http.Request
*/
type GenerateTokenByNewHeadlessAccountV3Params struct {

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
}

// WithTimeout adds the timeout to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) WithTimeout(timeout time.Duration) *GenerateTokenByNewHeadlessAccountV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) WithContext(ctx context.Context) *GenerateTokenByNewHeadlessAccountV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) WithHTTPClient(client *http.Client) *GenerateTokenByNewHeadlessAccountV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAdditionalData adds the additionalData to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) WithAdditionalData(additionalData *string) *GenerateTokenByNewHeadlessAccountV3Params {
	o.SetAdditionalData(additionalData)
	return o
}

// SetAdditionalData adds the additionalData to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) SetAdditionalData(additionalData *string) {
	o.AdditionalData = additionalData
}

// WithExtendExp adds the extendExp to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) WithExtendExp(extendExp *bool) *GenerateTokenByNewHeadlessAccountV3Params {
	o.SetExtendExp(extendExp)
	return o
}

// SetExtendExp adds the extendExp to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) SetExtendExp(extendExp *bool) {
	o.ExtendExp = extendExp
}

// WithLinkingToken adds the linkingToken to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) WithLinkingToken(linkingToken string) *GenerateTokenByNewHeadlessAccountV3Params {
	o.SetLinkingToken(linkingToken)
	return o
}

// SetLinkingToken adds the linkingToken to the generate token by new headless account v3 params
func (o *GenerateTokenByNewHeadlessAccountV3Params) SetLinkingToken(linkingToken string) {
	o.LinkingToken = linkingToken
}

// WriteToRequest writes these params to a swagger request
func (o *GenerateTokenByNewHeadlessAccountV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
