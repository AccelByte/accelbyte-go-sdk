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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewUpdateUserV3Params creates a new UpdateUserV3Params object
// with the default values initialized.
func NewUpdateUserV3Params() *UpdateUserV3Params {
	var ()
	return &UpdateUserV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateUserV3ParamsWithTimeout creates a new UpdateUserV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateUserV3ParamsWithTimeout(timeout time.Duration) *UpdateUserV3Params {
	var ()
	return &UpdateUserV3Params{

		timeout: timeout,
	}
}

// NewUpdateUserV3ParamsWithContext creates a new UpdateUserV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateUserV3ParamsWithContext(ctx context.Context) *UpdateUserV3Params {
	var ()
	return &UpdateUserV3Params{

		Context: ctx,
	}
}

// NewUpdateUserV3ParamsWithHTTPClient creates a new UpdateUserV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateUserV3ParamsWithHTTPClient(client *http.Client) *UpdateUserV3Params {
	var ()
	return &UpdateUserV3Params{
		HTTPClient: client,
	}
}

/*UpdateUserV3Params contains all the parameters to send to the API endpoint
for the update user v3 operation typically these are written to a http.Request
*/
type UpdateUserV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserUpdateRequestV3
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update user v3 params
func (o *UpdateUserV3Params) WithTimeout(timeout time.Duration) *UpdateUserV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update user v3 params
func (o *UpdateUserV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update user v3 params
func (o *UpdateUserV3Params) WithContext(ctx context.Context) *UpdateUserV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update user v3 params
func (o *UpdateUserV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update user v3 params
func (o *UpdateUserV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update user v3 params
func (o *UpdateUserV3Params) WithHTTPClient(client *http.Client) *UpdateUserV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update user v3 params
func (o *UpdateUserV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update user v3 params
func (o *UpdateUserV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateUserV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update user v3 params
func (o *UpdateUserV3Params) WithBody(body *iamclientmodels.ModelUserUpdateRequestV3) *UpdateUserV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update user v3 params
func (o *UpdateUserV3Params) SetBody(body *iamclientmodels.ModelUserUpdateRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the update user v3 params
func (o *UpdateUserV3Params) WithNamespace(namespace string) *UpdateUserV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update user v3 params
func (o *UpdateUserV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateUserV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
