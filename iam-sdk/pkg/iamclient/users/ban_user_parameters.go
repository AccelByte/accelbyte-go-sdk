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

// NewBanUserParams creates a new BanUserParams object
// with the default values initialized.
func NewBanUserParams() *BanUserParams {
	var ()
	return &BanUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBanUserParamsWithTimeout creates a new BanUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBanUserParamsWithTimeout(timeout time.Duration) *BanUserParams {
	var ()
	return &BanUserParams{

		timeout: timeout,
	}
}

// NewBanUserParamsWithContext creates a new BanUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewBanUserParamsWithContext(ctx context.Context) *BanUserParams {
	var ()
	return &BanUserParams{

		Context: ctx,
	}
}

// NewBanUserParamsWithHTTPClient creates a new BanUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBanUserParamsWithHTTPClient(client *http.Client) *BanUserParams {
	var ()
	return &BanUserParams{
		HTTPClient: client,
	}
}

/*BanUserParams contains all the parameters to send to the API endpoint
for the ban user operation typically these are written to a http.Request
*/
type BanUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelBanCreateRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the ban user params
func (o *BanUserParams) WithTimeout(timeout time.Duration) *BanUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the ban user params
func (o *BanUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the ban user params
func (o *BanUserParams) WithContext(ctx context.Context) *BanUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the ban user params
func (o *BanUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the ban user params
func (o *BanUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the ban user params
func (o *BanUserParams) WithHTTPClient(client *http.Client) *BanUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the ban user params
func (o *BanUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the ban user params
func (o *BanUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BanUserParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the ban user params
func (o *BanUserParams) WithBody(body *iamclientmodels.ModelBanCreateRequest) *BanUserParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the ban user params
func (o *BanUserParams) SetBody(body *iamclientmodels.ModelBanCreateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the ban user params
func (o *BanUserParams) WithNamespace(namespace string) *BanUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the ban user params
func (o *BanUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the ban user params
func (o *BanUserParams) WithUserID(userID string) *BanUserParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the ban user params
func (o *BanUserParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *BanUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
