// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso_credential

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

// NewRetrieveAllSSOLoginPlatformCredentialV3Params creates a new RetrieveAllSSOLoginPlatformCredentialV3Params object
// with the default values initialized.
func NewRetrieveAllSSOLoginPlatformCredentialV3Params() *RetrieveAllSSOLoginPlatformCredentialV3Params {
	var ()
	return &RetrieveAllSSOLoginPlatformCredentialV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllSSOLoginPlatformCredentialV3ParamsWithTimeout creates a new RetrieveAllSSOLoginPlatformCredentialV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllSSOLoginPlatformCredentialV3ParamsWithTimeout(timeout time.Duration) *RetrieveAllSSOLoginPlatformCredentialV3Params {
	var ()
	return &RetrieveAllSSOLoginPlatformCredentialV3Params{

		timeout: timeout,
	}
}

// NewRetrieveAllSSOLoginPlatformCredentialV3ParamsWithContext creates a new RetrieveAllSSOLoginPlatformCredentialV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllSSOLoginPlatformCredentialV3ParamsWithContext(ctx context.Context) *RetrieveAllSSOLoginPlatformCredentialV3Params {
	var ()
	return &RetrieveAllSSOLoginPlatformCredentialV3Params{

		Context: ctx,
	}
}

// NewRetrieveAllSSOLoginPlatformCredentialV3ParamsWithHTTPClient creates a new RetrieveAllSSOLoginPlatformCredentialV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllSSOLoginPlatformCredentialV3ParamsWithHTTPClient(client *http.Client) *RetrieveAllSSOLoginPlatformCredentialV3Params {
	var ()
	return &RetrieveAllSSOLoginPlatformCredentialV3Params{
		HTTPClient: client,
	}
}

/*RetrieveAllSSOLoginPlatformCredentialV3Params contains all the parameters to send to the API endpoint
for the retrieve all sso login platform credential v3 operation typically these are written to a http.Request
*/
type RetrieveAllSSOLoginPlatformCredentialV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Limit
	  the maximum number of data that may be returned (1...100), default 100

	*/
	Limit *int64
	/*Offset
	  Offset, default 0

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) WithTimeout(timeout time.Duration) *RetrieveAllSSOLoginPlatformCredentialV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) WithContext(ctx context.Context) *RetrieveAllSSOLoginPlatformCredentialV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) WithHTTPClient(client *http.Client) *RetrieveAllSSOLoginPlatformCredentialV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) WithNamespace(namespace string) *RetrieveAllSSOLoginPlatformCredentialV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) WithLimit(limit *int64) *RetrieveAllSSOLoginPlatformCredentialV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) WithOffset(offset *int64) *RetrieveAllSSOLoginPlatformCredentialV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the retrieve all sso login platform credential v3 params
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllSSOLoginPlatformCredentialV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
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
