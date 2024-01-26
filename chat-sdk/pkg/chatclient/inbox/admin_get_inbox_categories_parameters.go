// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inbox

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

// NewAdminGetInboxCategoriesParams creates a new AdminGetInboxCategoriesParams object
// with the default values initialized.
func NewAdminGetInboxCategoriesParams() *AdminGetInboxCategoriesParams {
	var ()
	return &AdminGetInboxCategoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetInboxCategoriesParamsWithTimeout creates a new AdminGetInboxCategoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetInboxCategoriesParamsWithTimeout(timeout time.Duration) *AdminGetInboxCategoriesParams {
	var ()
	return &AdminGetInboxCategoriesParams{

		timeout: timeout,
	}
}

// NewAdminGetInboxCategoriesParamsWithContext creates a new AdminGetInboxCategoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetInboxCategoriesParamsWithContext(ctx context.Context) *AdminGetInboxCategoriesParams {
	var ()
	return &AdminGetInboxCategoriesParams{

		Context: ctx,
	}
}

// NewAdminGetInboxCategoriesParamsWithHTTPClient creates a new AdminGetInboxCategoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetInboxCategoriesParamsWithHTTPClient(client *http.Client) *AdminGetInboxCategoriesParams {
	var ()
	return &AdminGetInboxCategoriesParams{
		HTTPClient: client,
	}
}

/*AdminGetInboxCategoriesParams contains all the parameters to send to the API endpoint
for the admin get inbox categories operation typically these are written to a http.Request
*/
type AdminGetInboxCategoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) WithTimeout(timeout time.Duration) *AdminGetInboxCategoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) WithContext(ctx context.Context) *AdminGetInboxCategoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) WithHTTPClient(client *http.Client) *AdminGetInboxCategoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetInboxCategoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) WithNamespace(namespace string) *AdminGetInboxCategoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get inbox categories params
func (o *AdminGetInboxCategoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetInboxCategoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
