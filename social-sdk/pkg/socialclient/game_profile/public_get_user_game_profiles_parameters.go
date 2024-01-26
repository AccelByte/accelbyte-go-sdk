// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_profile

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

// NewPublicGetUserGameProfilesParams creates a new PublicGetUserGameProfilesParams object
// with the default values initialized.
func NewPublicGetUserGameProfilesParams() *PublicGetUserGameProfilesParams {
	var ()
	return &PublicGetUserGameProfilesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserGameProfilesParamsWithTimeout creates a new PublicGetUserGameProfilesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserGameProfilesParamsWithTimeout(timeout time.Duration) *PublicGetUserGameProfilesParams {
	var ()
	return &PublicGetUserGameProfilesParams{

		timeout: timeout,
	}
}

// NewPublicGetUserGameProfilesParamsWithContext creates a new PublicGetUserGameProfilesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserGameProfilesParamsWithContext(ctx context.Context) *PublicGetUserGameProfilesParams {
	var ()
	return &PublicGetUserGameProfilesParams{

		Context: ctx,
	}
}

// NewPublicGetUserGameProfilesParamsWithHTTPClient creates a new PublicGetUserGameProfilesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserGameProfilesParamsWithHTTPClient(client *http.Client) *PublicGetUserGameProfilesParams {
	var ()
	return &PublicGetUserGameProfilesParams{
		HTTPClient: client,
	}
}

/*PublicGetUserGameProfilesParams contains all the parameters to send to the API endpoint
for the public get user game profiles operation typically these are written to a http.Request
*/
type PublicGetUserGameProfilesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*UserIds
	  User IDs

	*/
	UserIds []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) WithTimeout(timeout time.Duration) *PublicGetUserGameProfilesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) WithContext(ctx context.Context) *PublicGetUserGameProfilesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) WithHTTPClient(client *http.Client) *PublicGetUserGameProfilesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserGameProfilesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) WithNamespace(namespace string) *PublicGetUserGameProfilesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserIds adds the userIds to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) WithUserIds(userIds []string) *PublicGetUserGameProfilesParams {
	o.SetUserIds(userIds)
	return o
}

// SetUserIds adds the userIds to the public get user game profiles params
func (o *PublicGetUserGameProfilesParams) SetUserIds(userIds []string) {
	o.UserIds = userIds
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserGameProfilesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesUserIds := o.UserIds

	joinedUserIds := swag.JoinByFormat(valuesUserIds, "multi")
	// query array param userIds
	if err := r.SetQueryParam("userIds", joinedUserIds...); err != nil {
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
