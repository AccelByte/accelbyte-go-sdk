// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_roles

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

// NewDeleteMemberRoleAdminV1Params creates a new DeleteMemberRoleAdminV1Params object
// with the default values initialized.
func NewDeleteMemberRoleAdminV1Params() *DeleteMemberRoleAdminV1Params {
	var ()
	return &DeleteMemberRoleAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteMemberRoleAdminV1ParamsWithTimeout creates a new DeleteMemberRoleAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteMemberRoleAdminV1ParamsWithTimeout(timeout time.Duration) *DeleteMemberRoleAdminV1Params {
	var ()
	return &DeleteMemberRoleAdminV1Params{

		timeout: timeout,
	}
}

// NewDeleteMemberRoleAdminV1ParamsWithContext creates a new DeleteMemberRoleAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteMemberRoleAdminV1ParamsWithContext(ctx context.Context) *DeleteMemberRoleAdminV1Params {
	var ()
	return &DeleteMemberRoleAdminV1Params{

		Context: ctx,
	}
}

// NewDeleteMemberRoleAdminV1ParamsWithHTTPClient creates a new DeleteMemberRoleAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteMemberRoleAdminV1ParamsWithHTTPClient(client *http.Client) *DeleteMemberRoleAdminV1Params {
	var ()
	return &DeleteMemberRoleAdminV1Params{
		HTTPClient: client,
	}
}

/*DeleteMemberRoleAdminV1Params contains all the parameters to send to the API endpoint
for the delete member role admin v1 operation typically these are written to a http.Request
*/
type DeleteMemberRoleAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*MemberRoleID
	  member Role ID

	*/
	MemberRoleID string
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

// WithTimeout adds the timeout to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) WithTimeout(timeout time.Duration) *DeleteMemberRoleAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) WithContext(ctx context.Context) *DeleteMemberRoleAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) WithHTTPClient(client *http.Client) *DeleteMemberRoleAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteMemberRoleAdminV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithMemberRoleID adds the memberRoleID to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) WithMemberRoleID(memberRoleID string) *DeleteMemberRoleAdminV1Params {
	o.SetMemberRoleID(memberRoleID)
	return o
}

// SetMemberRoleID adds the memberRoleId to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) SetMemberRoleID(memberRoleID string) {
	o.MemberRoleID = memberRoleID
}

// WithNamespace adds the namespace to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) WithNamespace(namespace string) *DeleteMemberRoleAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete member role admin v1 params
func (o *DeleteMemberRoleAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteMemberRoleAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param memberRoleId
	if err := r.SetPathParam("memberRoleId", o.MemberRoleID); err != nil {
		return err
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
