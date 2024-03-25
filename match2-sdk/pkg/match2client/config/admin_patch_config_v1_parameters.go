// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewAdminPatchConfigV1Params creates a new AdminPatchConfigV1Params object
// with the default values initialized.
func NewAdminPatchConfigV1Params() *AdminPatchConfigV1Params {
	var ()
	return &AdminPatchConfigV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPatchConfigV1ParamsWithTimeout creates a new AdminPatchConfigV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPatchConfigV1ParamsWithTimeout(timeout time.Duration) *AdminPatchConfigV1Params {
	var ()
	return &AdminPatchConfigV1Params{

		timeout: timeout,
	}
}

// NewAdminPatchConfigV1ParamsWithContext creates a new AdminPatchConfigV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPatchConfigV1ParamsWithContext(ctx context.Context) *AdminPatchConfigV1Params {
	var ()
	return &AdminPatchConfigV1Params{

		Context: ctx,
	}
}

// NewAdminPatchConfigV1ParamsWithHTTPClient creates a new AdminPatchConfigV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPatchConfigV1ParamsWithHTTPClient(client *http.Client) *AdminPatchConfigV1Params {
	var ()
	return &AdminPatchConfigV1Params{
		HTTPClient: client,
	}
}

/*AdminPatchConfigV1Params contains all the parameters to send to the API endpoint
for the admin patch config v1 operation typically these are written to a http.Request
*/
type AdminPatchConfigV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.APIPatchNamespaceConfigRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) WithTimeout(timeout time.Duration) *AdminPatchConfigV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) WithContext(ctx context.Context) *AdminPatchConfigV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) WithHTTPClient(client *http.Client) *AdminPatchConfigV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPatchConfigV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) WithBody(body *match2clientmodels.APIPatchNamespaceConfigRequest) *AdminPatchConfigV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) SetBody(body *match2clientmodels.APIPatchNamespaceConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) WithNamespace(namespace string) *AdminPatchConfigV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin patch config v1 params
func (o *AdminPatchConfigV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPatchConfigV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
